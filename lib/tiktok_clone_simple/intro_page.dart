import 'package:flutter/material.dart';
import 'package:online8_xurshidbek_aka_ut/tiktok_clone_simple/vedio_player_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    _animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -2),
    ).animate(CurvedAnimation(
            parent: _animationController, curve: Curves.fastOutSlowIn));

    _animationController.forward();
    _animation.addStatusListener((AnimationStatus status) { 
      if(status==AnimationStatus.completed){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>VedioPlayerPage()));
      }
    });
  }

  @override void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:SlideTransition(position: _animation,
      child: const Center(
        child: Image(
          height: 200,
          width: 200,
          fit: BoxFit.cover,
          image:AssetImage("assest/images/tik_tok.png"),
        ),
      ),
      ) ,
    );
  }
}
