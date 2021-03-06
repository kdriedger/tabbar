import 'package:flutter/material.dart';
import 'tabbar_controller.dart';

class TabbarContent extends StatelessWidget {
  final TabbarController controller;
  final List<Widget> children;
  final ScrollPhysics physics;
  final bool isSnaping;
  final ValueChanged<int> onPageChanged;
    
  const TabbarContent({
    Key key,
    @required this.controller,
    @required this.children,
    this.physics,
    this.isSnaping = true,
    this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: children,
      pageSnapping: isSnaping,
      physics: physics,
      onPageChanged: onPageChanged
    );
  }
}
