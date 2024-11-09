import 'package:flutter/material.dart';

class CarouselSwipeIndicator extends StatefulWidget {
  final double width;
  final Color color;
  final Duration showDuration;
  final Duration animationDuration;

  static bool _hasShownOnce = false;

  const CarouselSwipeIndicator({
    super.key,
    this.width = 40.0,
    this.color = Colors.black,
    this.showDuration = const Duration(seconds: 2),
    this.animationDuration = const Duration(milliseconds: 1000),
  });

  static void reset() {
    _hasShownOnce = false;
  }

  @override
  State<CarouselSwipeIndicator> createState() => _CarouselSwipeIndicatorState();
}

class _CarouselSwipeIndicatorState extends State<CarouselSwipeIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  bool _visible = true;

  @override
  void initState() {
    super.initState();

    // If already shown once, start hidden
    if (CarouselSwipeIndicator._hasShownOnce) {
      _visible = false;
    } else {
      CarouselSwipeIndicator._hasShownOnce = true;
      _initializeAnimation();
    }
  }

  void _initializeAnimation() {
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-0.2, 0.0),
      end: const Offset(0.2, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.repeat(reverse: true);

    Future.delayed(widget.showDuration, () {
      if (mounted) {
        setState(() {
          _visible = false;
        });
        // Stop and dispose the controller after the animation is hidden
        _controller.stop();
        _controller.dispose();
      }
    });
  }

  @override
  void dispose() {
    // Only dispose if the controller was actually initialized
    if (!CarouselSwipeIndicator._hasShownOnce || _visible) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (CarouselSwipeIndicator._hasShownOnce && !_visible) {
      return const SizedBox.shrink();
    }

    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SlideTransition(
            position: _slideAnimation,
            child: Icon(
              Icons.arrow_back_ios,
              color: widget.color,
              size: widget.width,
            ),
          ),
          SlideTransition(
            position: _slideAnimation,
            child: Icon(
              Icons.arrow_forward_ios,
              color: widget.color,
              size: widget.width,
            ),
          ),
        ],
      ),
    );
  }
}
