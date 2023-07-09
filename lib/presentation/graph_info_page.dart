import 'package:auto_route/annotations.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/link_to_website.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class GraphInfoPage extends StatelessWidget {
  const GraphInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [
          CloseButton(),
        ],
        title: Text(AppLocalizations.of(context)!.aboutGraphPageTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading(
                  text: AppLocalizations.of(context)!.graphInfoPageHeading1,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text: AppLocalizations.of(context)!.graphInfoPageParagraph1,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text: AppLocalizations.of(context)!.graphInfoPageParagraph2,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text: AppLocalizations.of(context)!.graphInfoPageParagraph3,
                ),
                AppPadding.sizedBoxVerticalRegular,
                const LinkToWebsite(type: 1),
                const LinkToWebsite(type: 2),
                const LinkToWebsite(type: 3),
                const LinkToWebsite(type: 4),
                const LinkToWebsite(type: 5),
                const LinkToWebsite(type: 6),
                const LinkToWebsite(type: 7),
                Heading(
                  text: AppLocalizations.of(context)!.graphInfoPageHeading2,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text: AppLocalizations.of(context)!.graphInfoPageParagraph4,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Heading(
                  text: AppLocalizations.of(context)!.graphInfoPageHeading3,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text: AppLocalizations.of(context)!.graphInfoPageParagraph5,
                ),
                AppPadding.sizedBoxVerticalRegular,
                Paragraph(
                  text: AppLocalizations.of(context)!.graphInfoPageParagraph6,
                ),
                AppPadding.sizedBoxVerticalRegular,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
