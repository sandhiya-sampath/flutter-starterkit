import 'package:flutter/material.dart';
import 'responsive_widget.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? xs;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;
  final Widget? child;
  const ResponsiveWidget({
    Key? key,
    this.xs,
    this.md,
    this.lg,
    this.xl,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveUtil.isXS(context)) {
      return getResponsiveWidget(
          targetWidget: xs,
          firstFallback: md,
          secondFallback: lg,
          thirdFallback: xl);
    } else if (ResponsiveUtil.isMD(context)) {
      return getResponsiveWidget(
          targetWidget: md,
          firstFallback: xs,
          secondFallback: lg,
          thirdFallback: xl);
    } else if (ResponsiveUtil.isLG(context)) {
      return getResponsiveWidget(
          targetWidget: lg,
          firstFallback: xl,
          secondFallback: md,
          thirdFallback: xs);
    } else {
      return getResponsiveWidget(
          targetWidget: xl,
          firstFallback: lg,
          secondFallback: md,
          thirdFallback: xs);
    }
  }

  ///[getResponsiveWidget] returns the most likely widget that can suit the current screensize and moves
  ///fallback options in case the target form factor is not supplied
  Widget getResponsiveWidget({
    Widget? targetWidget,
    Widget? firstFallback,
    Widget? secondFallback,
    Widget? thirdFallback,
  }) {
    if (targetWidget != null) {
      return targetWidget;
    } else if (firstFallback != null) {
      return firstFallback;
    } else if (secondFallback != null) {
      return secondFallback;
    } else if (thirdFallback != null) {
      return thirdFallback;
    } else if (child != null) {
      return child!;
    }
    throw UnimplementedError(
        "Atleast one widget is neede, plesae set any one of the following attributes : xs or md or lg or xl or child");
  }
}
