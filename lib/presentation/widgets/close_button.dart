import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).popForced();
      },
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Icon(Icons.close),
      ),
    );
  }
}
