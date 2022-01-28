import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VedioPlayerPage extends StatefulWidget {
  const VedioPlayerPage({Key? key}) : super(key: key);

  @override
  _VedioPlayerPageState createState() => _VedioPlayerPageState();
}

class _VedioPlayerPageState extends State<VedioPlayerPage> {
  List <String>videos=[
    "video_tiktok1.mp4",
    "video_tiktok2.mp4",
    "video_tiktok3.mp4",
    "video_tiktok4.mp4",
  ];
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  int selectedVideo = 0;

  @override
  void initState() {
    // TODO: implement initState

    _controller =
        VideoPlayerController.asset("assest/vedio/${videos[0]}");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Tik Tok",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: PageView.builder(
        onPageChanged: (index) {
          if (selectedVideo != index) {
            _controller.pause();
          }
          setState(() {
            selectedVideo = index;
            _controller = VideoPlayerController.asset(
                "assest/vedio/${videos[index]}");
            _initializeVideoPlayerFuture = _controller.initialize();
            _controller.setLooping(true);
          });
          _controller.play();
        },
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          selectedVideo = index;
          return FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  alignment: Alignment.center,
                  child: GestureDetector(onTap: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  ),

                );
              }
              else{
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          );
        },
      ),
    );
  }
}
