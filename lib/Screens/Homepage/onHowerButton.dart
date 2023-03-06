import 'package:flutter/material.dart';

class OnHowerButton extends StatefulWidget {
  final Widget Function(bool isHovered)builder;

  const OnHowerButton({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  _OnHowerButtonState createState() => _OnHowerButtonState();
}

class _OnHowerButtonState extends State<OnHowerButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.05);
    final transform = isHovered? hoveredTransform:Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEnterd(true),
      onExit: (event) => onEnterd(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: transform,
          child: widget.builder(isHovered)),
    );
  }

  onEnterd(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
