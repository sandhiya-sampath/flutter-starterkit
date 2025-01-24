import 'package:flutter/material.dart';

extension Decorators on Widget {
  // Padding
  Widget paddingAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget paddingSymmetric({double vertical = 0, double horizontal = 0}) =>
      Padding(
        padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  // Margins (Use in combination with Containers)
  Widget marginAll(double value) => Container(
        margin: EdgeInsets.all(value),
        child: this,
      );

  Widget marginSymmetric({double vertical = 0, double horizontal = 0}) =>
      Container(
        margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  // Centering
  Widget centered() => Center(child: this);

  // Styled Card Wrapper
 Widget withCard({double borderRadius = 8, double elevation = 4}) => SizedBox.expand(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: elevation,
          child: this,
        ),
      );
}
