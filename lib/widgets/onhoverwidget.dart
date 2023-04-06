import 'package:flutter/material.dart';

class OnHoverWidget extends StatefulWidget {
  final MouseCursor cursor;
  final Widget Function(bool isHovered) builder;
  const OnHoverWidget({Key? key, required this.builder, required this.cursor})
      : super(key: key);

  @override
  State<OnHoverWidget> createState() => _OnHoverWidgetState();
}

class _OnHoverWidgetState extends State<OnHoverWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4Tween().begin
      ..translate(8, 0, 0)
      ..scale(1.2);
    final transform = isHovered ? hoveredTransform : Matrix4Tween().begin;

    return MouseRegion(
      onEnter: (event) => onEnter(true),
      onExit: (event) => onEnter(false),
      cursor: widget.cursor,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: transform,
          child: widget.builder(isHovered)),
    );
  }

  void onEnter(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
