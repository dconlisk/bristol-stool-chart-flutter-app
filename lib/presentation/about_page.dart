import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
