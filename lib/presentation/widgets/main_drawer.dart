import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/widgets/drawer_link.dart';
import 'package:flutter/material.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sprintf/sprintf.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String versionNumber = '';

  @override
  void initState() {
    PackageInfo.fromPlatform().then((packageInfo) {
      setState(() {
        versionNumber = packageInfo.version;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.blueGrey,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                      bottom: 80,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/drawer_logo.png'),
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  DrawerLink(
                    text: AppLocalizations.of(context)!.graphDrawerLinkText,
                    icon: Icons.assessment,
                    route: const GraphRoute(),
                  ),
                  DrawerLink(
                    text: AppLocalizations.of(context)!.settingsDrawerLinkText,
                    icon: Icons.settings,
                    route: const SettingsRoute(),
                  ),
                  DrawerLink(
                    text: AppLocalizations.of(context)!.aboutDrawerLinkText,
                    icon: Icons.info,
                    route: const AboutRoute(),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Padding(
                      padding: AppPadding.regular,
                      child: Text(
                        sprintf(
                          AppLocalizations.of(context)!
                              .appVersionLabelFormatString,
                          [versionNumber],
                        ),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
