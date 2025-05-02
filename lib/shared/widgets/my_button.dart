import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Widget child;
  final void Function()? onPressed;
  final Color? buttonColor;
  final Color? backButtonColor;
  final double? width;
  final double? height;
  final bool isEnabled;
  final double depth;
  final EdgeInsets padding;
  final double borderRadius;

  const MyButton({
    super.key,
    this.borderRadius = 15.0,
    this.width,
    this.height,
    this.isEnabled = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.depth = 5,
    required this.child,
    required this.onPressed,
    this.buttonColor,
    this.backButtonColor,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.isEnabled,
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: (_) {
          setState(() {
            _isPressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            _isPressed = false;
          });
        },
        onTapCancel: () {
          setState(() {
            _isPressed = false;
          });
        },
        child: AnimatedSlide(
          duration: Duration(milliseconds: 100),
          offset: Offset(0, _isPressed ? widget.depth / 60 : 0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            width: widget.width,
            height: widget.height,
            padding: widget.padding,
            decoration: BoxDecoration(
              color: widget.buttonColor ?? Colors.white,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, _isPressed ? 0 : widget.depth),
                  color: widget.backButtonColor ?? Colors.grey,
                ),
              ],
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
