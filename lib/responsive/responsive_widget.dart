import 'package:flutter/material.dart';

///
/// /*   Extra small devices (phones, 600px and down) */
///@media only screen and (max-width: 600px) {...}
/* Small devices (portrait tablets and large phones, 600px and up) */
///@media only screen and (min-width: 600px) {...}
/* Medium devices (landscape tablets, 768px and up) */
///@media only screen and (min-width: 768px) {...}
/* Large devices (laptops/desktops, 992px and up) */
///@media only screen and (min-width: 992px) {...}
/* Extra large devices (large laptops and desktops, 1200px and up) */
///@media only screen and (min-width: 1200px) {...}

class MediaQueryUtil {
  static const xs = 360;
  static const s = 576;
  static const md = 768;
  static const lg = 1200;
}

class ResponsiveUtil {
  static dynamic get(
      {required context, required xs, required md, required lg}) {
    var width = MediaQuery.of(context).size.width;
    if (width < MediaQueryUtil.xs) {
      return xs;
    } else if (width >= MediaQueryUtil.xs && width <= MediaQueryUtil.md) {
      return md;
    } else {
      return lg;
    }
  }

  static bool isS(context) {
    return MediaQuery.of(context).size.width <= MediaQueryUtil.s;
  }

  static bool isXS(context) {
    return MediaQuery.of(context).size.width <= MediaQueryUtil.xs;
  }

  static bool isMD(context) {
    var size = MediaQuery.of(context).size.width;
    return size > MediaQueryUtil.xs && size <= MediaQueryUtil.md;
  }

  static bool isLG(context) {
    var size = MediaQuery.of(context).size.width;
    return size > MediaQueryUtil.md && size <= MediaQueryUtil.lg;
  }

  static bool isXL(context) {
    var size = MediaQuery.of(context).size.width;
    return size > MediaQueryUtil.lg;
  }
}
