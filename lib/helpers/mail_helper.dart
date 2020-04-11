import 'package:flutter_mailer/flutter_mailer.dart';

class MailHelper {
  static Future<void> sendMailWithAttachments(
      List<String> attachmentPaths) async {
    // TODO: Error handling, in case user doesn't have mail client enabled/installed
    // send email attachment
    final MailOptions mailOptions = MailOptions(
      body: '',
      subject: 'Bristol Stool Chart data attached',
      //recipients: ['example@example.com'],
      isHTML: false,
      //bccRecipients: ['other@example.com'],
      //ccRecipients: ['third@example.com'],
      attachments: attachmentPaths,
    );

    await FlutterMailer.send(mailOptions);
  }
}
