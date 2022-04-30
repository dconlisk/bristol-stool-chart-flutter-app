import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.aboutPageTitle)),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.small,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading(
                  text: AppLocalizations.of(context)!.aboutPageHeading1,
                ),
                Paragraph(
                  text: AppLocalizations.of(context)!.aboutPageParagraph1,
                ),
                Heading(
                  text: AppLocalizations.of(context)!.aboutPageHeading2,
                ),
                Paragraph(
                  text: AppLocalizations.of(context)!.aboutPageParagraph2,
                ),
                Heading(
                  text: AppLocalizations.of(context)!.aboutPageHeading3,
                ),
                Paragraph(
                  text: AppLocalizations.of(context)!.aboutPageParagraph3,
                ),
                Heading(
                  text: AppLocalizations.of(context)!.aboutPageHeading4,
                ),
                Paragraph(
                  text: AppLocalizations.of(context)!.aboutPageParagraph4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
