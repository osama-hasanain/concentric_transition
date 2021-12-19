import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class ConcentricTransition extends StatefulWidget {
  @override
  _ConcentricTransitionState createState() => _ConcentricTransitionState();
}

class _ConcentricTransitionState extends State<ConcentricTransition> {

  List<Color> colors = [
    Colors.white,
    Colors.blue,
    Colors.red,
  ];
  List<String> imgs =[
    'assets/imgs/img1.png',
    'assets/imgs/img2.png',
    'assets/imgs/img3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ConcentricPageView(
      colors: colors,
      itemCount: 3, // null = infinity
      physics: BouncingScrollPhysics(),
      itemBuilder: (int index, double value) {
        return Container(
            child: Image.asset(
              imgs[index],
            ),
        );
      },
    );
  }
}
