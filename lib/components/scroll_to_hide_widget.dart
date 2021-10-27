import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pharmacity/constants.dart';

class ScrollToHideWidget extends StatefulWidget {
  const ScrollToHideWidget({
    Key? key,
    required this.child,
    required this.controller,
    this.duration = kAnimationDuration,
  }) : super(key: key);

  final Widget child;
  final ScrollController controller;
  final Duration duration;

  @override
  _ScrollToHideWidgetState createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onscroll);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_onscroll);
  }

  void _onscroll() {
    final direction = widget.controller.position.userScrollDirection;

    if (direction == ScrollDirection.forward) {
      _show();
    } else if (direction == ScrollDirection.reverse) {
      _hide();
    }
  }

  void _show() {
    if (!_isVisible) {
      setState(() => _isVisible = true);
    }
  }

  void _hide() {
    if (_isVisible) {
      setState(() => _isVisible = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: _isVisible ? kConvexBarHeight : 0,
      child: Wrap(children: [widget.child]),
    );
  }
}
