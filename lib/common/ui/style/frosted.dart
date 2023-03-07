import 'dart:ui';
import 'package:flutter/material.dart';

class Frosted extends StatelessWidget {
  final Widget? _child;
  final Color? _color;
  final BorderRadius? _borderRadius;
  final Border? _border;

  const Frosted(
      {Widget? child,
      Color? color,
      BorderRadius? borderRadius = BorderRadius.zero,
      Border? border,
      Key? key})
      : _child = child,
        _color = color,
        _borderRadius = borderRadius,
        _border = border,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15.0,
          sigmaY: 15.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: _color?.withOpacity(0.2),
            border: _border,
          ),
          child: _child,
        ),
      ),
    );
  }
}
