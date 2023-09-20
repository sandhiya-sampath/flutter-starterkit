import 'package:flutter/material.dart';
import 'package:flutter_starter/responsive/responsive.dart';

class ResponsiveWidgetExample extends StatelessWidget {
  const ResponsiveWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //Fetch appbar title based on device width type
      appBar: AppBar(title: Text(getAppBarText(context))),
      //responsive body based on screen type
      body: Responsive(
        // Let's work on our mobile part
        mobile:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              flex: 6,
              child: Container(
                color: Colors.red,
                child: widgetOne(),
              )),
          Expanded(
              flex: 6,
              child: Container(
                color: Colors.green,
                child: widgetTwo(),
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                child: widgetThree(),
              ))
        ]),
        tablet: IntrinsicHeight(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 120.0,
                    color: Colors.red,
                    child: widgetOne(),
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.green,
                    child: widgetTwo(),
                  )
                ]),
          ),
          Expanded(
              child: Container(
            color: Colors.yellow,
            child: widgetThree(),
          )),
        ])),

        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: Container(
                color: Colors.red,
                child: widgetOne(),
              ),
            ),
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: Container(
                color: Colors.green,
                child: widgetTwo(),
              ),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: Container(
                color: Colors.yellow,
                child: widgetThree(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///Make sure to maintain reusable widgets 
///So,it will be usefull to create responsive design.
Widget widgetOne() {
  return const Text("WIDGET ONE");
}

Widget widgetTwo() {
  return const Text("WIDGET TWO");
}

Widget widgetThree() {
  return const Text("WIDGET THREE");
}

Widget widgetFour() {
  return const Text("WIDGET FOUR");
}

String getAppBarText(context) {
  if (Responsive.isMobile(context)) {
    return "MOBILE";
  } else if (Responsive.isTablet(context)) {
    return "TABLET";
  } else {
    return "DESKTOP";
  }
}
