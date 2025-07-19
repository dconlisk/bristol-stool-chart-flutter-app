import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/l10n/app_localizations.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                  text: AppLocalizations.of(context)!.howDoesItWorkHeading,
                ),
                Paragraph(
                  text: AppLocalizations.of(context)!.howDoesItWorkParagraph,
                ),
                Heading(
                  text: AppLocalizations.of(context)!.newFeaturesHeading,
                ),
                Paragraph(
                  text: AppLocalizations.of(context)!.newFeaturesParagraph1,
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
                const SizedBox(height: AppSizes.regular),
                ElevatedButton(
                    onPressed: () async {
                      final Uri uri = Uri(
                        scheme: 'mailto',
                        path: 'david@web-garden.co.uk',
                        query:
                            'subject=${AppLocalizations.of(context)!.feedbackEmailSubjectLine}', //add subject and body here
                      );

                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        if (context.mounted) {
                          await showDialog<AlertDialog>(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(AppLocalizations.of(context)!
                                  .errorOccurredTitle),
                              content: Text(
                                AppLocalizations.of(context)!
                                    .emailErrorOccurredMessage,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .continueButtonText,
                                  ),
                                  onPressed: () {
                                    context.router.pop();
                                  },
                                )
                              ],
                            ),
                          );
                        }
                      }
                    },
                    child:
                        Text(AppLocalizations.of(context)!.emailMeButtonLabel)),
                const SizedBox(height: AppSizes.regular),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
