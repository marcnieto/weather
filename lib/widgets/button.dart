import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double _kDefaultOnPressScaleFactor = 0.95;

class Button extends StatefulWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final bool hapticEnabled;

  const Button({
    super.key,
    required this.onPressed,
    required this.child,
    this.hapticEnabled = true,
  });

  @override
  State<Button> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<Button>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  Future<void>? _onTapDown(PointerDownEvent _) {
    if (mounted == true) {
      _controller.forward();
      return widget.hapticEnabled ? HapticFeedback.lightImpact() : null;
    }

    return null;
  }

  Future<void>? _onTapUp(PointerUpEvent _) {
    if (mounted == true) {
      _controller.reverse();

      return widget.hapticEnabled ? HapticFeedback.lightImpact() : null;
    }

    return null;
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    )..addListener(() {
        // ignore: no-empty-block
        setState(() {});
      });

    _animation = Tween(
      begin: 1.0,
      end: _kDefaultOnPressScaleFactor,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeInExpo,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onTapDown,
      onPointerUp: _onTapUp,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onPressed,
        child: Transform.scale(
          scale: _animation.value,
          transformHitTests: true,
          child: widget.child,
        ),
      ),
    );
  }
}
