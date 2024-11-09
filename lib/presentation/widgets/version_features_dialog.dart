import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VersionFeaturesDialog extends StatefulWidget {
  final List<String> features;
  final String title;
  final String buttonText;
  final VoidCallback? onDismiss;

  const VersionFeaturesDialog({
    super.key,
    required this.features,
    this.title = "What's New",
    this.buttonText = "Got it",
    this.onDismiss,
  });

  /// Shows the dialog if it hasn't been shown for the current version
  static Future<void> showIfNeeded(
    BuildContext context, {
    required List<String> features,
    String title = "What's New",
    String buttonText = "Got it",
    VoidCallback? onDismiss,
  }) async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final prefs = await SharedPreferences.getInstance();
    final lastShownVersion = prefs.getString('last_shown_features_version');

    if (lastShownVersion != packageInfo.version && context.mounted) {
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => VersionFeaturesDialog(
          features: features,
          title: title,
          buttonText: buttonText,
          onDismiss: onDismiss,
        ),
      );

      await prefs.setString('last_shown_features_version', packageInfo.version);
    }
  }

  @override
  State<VersionFeaturesDialog> createState() => _VersionFeaturesDialogState();
}

class _VersionFeaturesDialogState extends State<VersionFeaturesDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            ...widget.features.map((feature) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ",
                          style: Theme.of(context).textTheme.titleMedium),
                      Expanded(
                        child: Text(
                          feature,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
      actions: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              widget.onDismiss?.call();
            },
            child: Text(
              widget.buttonText,
            ),
          ),
        ),
      ],
    );
  }
}
