import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FourthLottie extends StatefulWidget {
  String lottie;

  FourthLottie({Key? key, required this.lottie}) : super(key: key);

  @override
  _FourthLottieState createState() => _FourthLottieState();
}

class _FourthLottieState extends State<FourthLottie>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 500), upperBound: 1.0);
  _animationController.forward(from: 0.5);
  }
@override void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return RotationTransition(turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
    child: Lottie.asset(widget.lottie,repeat: false),
    );
  }
}