import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GraphTooltipOverlay extends StatefulWidget {
  final Widget child;
  final String message;
  final Duration displayDuration;
  final Duration fadeInDuration;
  final Duration fadeOutDuration;
  final bool showOverlay;

  const GraphTooltipOverlay({
    super.key,
    required this.child,
    this.message = '',
    this.displayDuration = const Duration(seconds: 3),
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeOutDuration = const Duration(milliseconds: 500),
    this.showOverlay = true,
  });

  @override
  State<GraphTooltipOverlay> createState() => _GraphTooltipOverlayState();
}

class _GraphTooltipOverlayState extends State<GraphTooltipOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isOverlayVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.fadeInDuration,
      reverseDuration: widget.fadeOutDuration,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    );

    _showOverlay();
  }

  void _showOverlay() async {
    await _controller.forward();
    await Future.delayed(widget.displayDuration);
    if (mounted) {
      await _controller.reverse();
      setState(() => _isOverlayVisible = false);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.showOverlay) {
      return widget.child;
    }
    return Stack(
      children: [
        widget.child,
        if (_isOverlayVisible)
          FadeTransition(
            opacity: _animation,
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.large,
                    vertical: AppSizes.large,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: AppPadding.borderRadius,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: AppSizes.small,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    widget.message,
                    style: TextStyle(
                      fontSize: AppSizes.regular,
                      color: AppColors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
