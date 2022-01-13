import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Start Messaging",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              padding: EdgeInsets.only(bottom: 30),
            ),
            PageView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Lottie.asset("assest/_animation/telegram_1page.json"),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Telegram X",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The world's fastest messagining app.\nIt is free and secure",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                    child: Column(
                  children: [
                    Lottie.asset("assest/_animation/telegram_2_page.json"),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Fast",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Telegram delivers messages.\nfaster than any other application",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    )
                  ],
                )),
                Container(
                    child: Column(
                  children: [
                    Lottie.asset("assest/_animation/telegram_3_page.json"),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Fast",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Telegram delivers messages.\nfaster than any other application",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    )
                  ],
                )),
                Container(
                    child: Column(
                  children: [
                    Lottie.asset("assest/_animation/telegram_4_page.json"),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Fast",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Telegram delivers messages.\nfaster than any other application",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    )
                  ],
                )),
              ],
            ),
          ],
        ));
  }
}
