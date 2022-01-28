import 'package:flutter/material.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/lotties/fifth_lottie.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/lotties/first_lottie.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/lotties/fourth_lottie.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/lotties/second_lottie.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/lotties/sixth_lottie.dart';
import 'package:online8_xurshidbek_aka_ut/telegram_intro/lotties/third_lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Telegram extends StatefulWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  late AnimationController _animationController;
  late Animation<Offset> _animation;

  List titles = [
    "Telegram",
    "Fast",
    "Free",
    "Powerful",
    "Secure",
    "Cloud-Based"
  ];

  List subtitle = [
    RichText(
      text: const TextSpan(
          text: "The world's ",
          style: TextStyle(color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
                text: "fastest ", style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: "free ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: "and "),
            TextSpan(
                text: "secure.", style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
      maxLines: 5,
      textAlign: TextAlign.center,
    ),
    RichText(
      text: const TextSpan(
          text: "Telegram ",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
                text: "delivers messages\nfaster than any other application. ",
                style: TextStyle(fontWeight: FontWeight.normal))
          ]),
      maxLines: 2,
      textAlign: TextAlign.center,
    ),
    RichText(
      text: const TextSpan(
          text: "Telegram ",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
                text: "is free forever.No ads.\nNo subscription fees. ",
                style: TextStyle(fontWeight: FontWeight.normal))
          ]),
      textAlign: TextAlign.center,
      maxLines: 2,
    ),
    RichText(
      text: const TextSpan(
          text: "Telegram",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
              text: "has no limits on\nthe size of your media and chats.",
              style: TextStyle(fontWeight: FontWeight.normal),
            )
          ]),
      maxLines: 2,
      textAlign: TextAlign.center,
    ),
    RichText(
      text: const TextSpan(
          text: "Telegram",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
              text: "has no limits on\nthe size of your media and chats.",
              style: TextStyle(fontWeight: FontWeight.normal),
            )
          ]),
      maxLines: 2,
      textAlign: TextAlign.center,
    ),
    RichText(
      text: const TextSpan(
          text: "Telegram",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
              text: "has no limits on\nthe size of your media and chats.",
              style: TextStyle(fontWeight: FontWeight.normal),
            )
          ]),
      maxLines: 2,
      textAlign: TextAlign.center,
    ),
  ];

  List anims = [
    FirstLottie(lottie: "assest/_animation/telegram_1page.json"),
    SecondLottie(lottie: "assest/_animation/telegram_2_page.json"),
    ThirdLottie(lottie: "assest/_animation/telegram_3_page.json"),
    FourthLottie(lottie: "assest/_animation/telegram_4_page.json"),
    FifthLottie(lottie: "assest/_animation/telegram_5_page.json"),
    SixthLottie(lottie: "assest/_animation/telegram_6_page.json")
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _animation = Tween<Offset>(begin: Offset(0.0, 1), end: Offset.zero).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.elasticIn));

    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SlideTransition(
        position: _animation,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Center(
                child: anims[_selectedIndex],
              ),
            ),
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: List.generate(
                  titles.length,
                      (index) =>
                          _pages(title: titles[index], subtitle: subtitle[index])),

            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.14),
              child:SmoothPageIndicator(count: anims.length,
                 controller: _pageController,
                effect:const WormEffect(
                  dotHeight: 7,
                  dotWidth: 7,
                  dotColor: Colors.grey
                ),
              ) ,
            ),
            Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.04),
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,


              child: TextButton(onPressed: () {  }, child:const Text("Start Message",
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),

              ),
            )
            )],
        ),
      ),
    );
  }

  Widget _pages({required String title, required RichText subtitle}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              alignment: Alignment.topCenter,
              child: subtitle,
            ))
      ],
    );
  }
}
