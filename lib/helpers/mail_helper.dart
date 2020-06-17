import 'package:flutter_mailer/flutter_mailer.dart';

class MailHelper {
  static Future<bool> sendMailWithAttachments(
      List<String> attachmentPaths) async {
    final MailOptions mailOptions = MailOptions(
      body: '',
      subject: 'Bristol Stool Chart data attached',
      isHTML: false,
      attachments: attachmentPaths,
    );

    try {
      await FlutterMailer.send(mailOptions);
    } catch (e) {
      return false;
    }
    return true;
  }
}
