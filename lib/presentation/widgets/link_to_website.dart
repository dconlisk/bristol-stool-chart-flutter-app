import 'package:bristol_stool_chart/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkToWebsite extends StatelessWidget {
  final int type;

  const LinkToWebsite({
    super.key,
    required this.type,
  });

  Future<void> _openUrl({
    required BuildContext context,
    required int type,
  }) async {
    final typeNames = [
      AppLocalizations.of(context)!.type1Name,
      AppLocalizations.of(context)!.type2Name,
      AppLocalizations.of(context)!.type3Name,
      AppLocalizations.of(context)!.type4Name,
      AppLocalizations.of(context)!.type5Name,
      AppLocalizations.of(context)!.type6Name,
      AppLocalizations.of(context)!.type7Name,
    ];
    var uri = Uri(
      path: 'bristolstoolchart.net/type-${typeNames[type - 1]}',
      scheme: 'https',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Text(
          sprintf(AppLocalizations.of(context)!.typeFormatString, [type]),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        onTap: () => _openUrl(context: context, type: type),
      ),
    );
  }
}
