import 'package:feslmax_app/core/theme/_expo_theme.dart';
import 'package:flutter/material.dart';

class CheckBoxRemenberMe extends StatefulWidget {
  final bool isChecked;
  final Duration transitionDuration;
  final Function(bool isChecked) onCheckedBoxChanged;
  final Color inactiveColor;
  final Color activeColor;

  const CheckBoxRemenberMe({
    Key key,
    this.isChecked,
    this.onCheckedBoxChanged,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.inactiveColor,
    this.activeColor = const Color(0xFF4e8fda),
  }) : super(key: key);

  @override
  _CheckBoxRemenberMeState createState() => _CheckBoxRemenberMeState();
}

class _CheckBoxRemenberMeState extends State<CheckBoxRemenberMe>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: widget.transitionDuration, lowerBound: 0.5);
  }

  @override
  void didUpdateWidget(covariant CheckBoxRemenberMe oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isChecked && !oldWidget.isChecked) {
      _controller.forward();
    } else if (!widget.isChecked && oldWidget.isChecked) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onCheckedBoxChanged(!widget.isChecked);
      },
      child: AnimatedContainer(
        duration: widget.transitionDuration,
        decoration: BoxDecoration(
          color: widget.isChecked
              ? FelsmaxColors.primaryColor
              : Colors.transparent,
          border: Border.all(
            color: widget.isChecked
                ? FelsmaxColors.primaryColor
                : const Color(0xFFd3e0ea),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: widget.isChecked
            ? ScaleTransition(
                scale: _controller,
                child: const Icon(
                  Icons.check,
                  color: Color(0xFFd3e0ea),
                ),
              )
            : const SizedBox(width: 24, height: 24),
      ),
    );
  }
}
