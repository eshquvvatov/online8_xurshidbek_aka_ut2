import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DemoAnimationPage extends StatefulWidget {
  const DemoAnimationPage({Key? key}) : super(key: key);

  @override
  _DemoAnimationPageState createState() => _DemoAnimationPageState();
}

class _DemoAnimationPageState extends State<DemoAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo Animation"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Lottie.asset("assest/_animation/85610-3-dot-loading.json")
            ],
          ),
        ));
  }
}
