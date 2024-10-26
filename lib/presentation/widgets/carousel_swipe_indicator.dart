import 'package:flutter/material.dart';

class CarouselSwipeIndicator extends StatefulWidget {
  final double width;
  final Color color;
  final Duration showDuration;
  final Duration animationDuration;

  const CarouselSwipeIndicator({
    super.key,
    this.width = 40.0,
    this.color = Colors.black,
    this.showDuration = const Duration(seconds: 2),
    this.animationDuration = const Duration(milliseconds: 1000),
  });

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

    // Initialize animation controller
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    // Create sliding animation
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-0.2, 0.0),
      end: const Offset(0.2, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _controller.repeat(reverse: true);

    // Hide the indicator after showDuration
    Future.delayed(widget.showDuration, () {
      if (mounted) {
        setState(() {
          _visible = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
