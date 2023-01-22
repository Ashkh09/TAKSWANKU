import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  VideoPlayerController? controller;


  String asset = "assets/google.mp4";

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..initialize().then((_) {
        setState(() {});
      });

    controller!.play();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(),
                controller!.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: controller!.value.aspectRatio,
                  child: VideoPlayer(controller!),
                )
                    : Container(
                  height: 200,
                  width: double.infinity,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (controller!.value.isPlaying) {
                        controller!.pause();
                      } else {
                        controller!.play();
                      }
                    });
                  },
                  icon: controller!.value.isPlaying
                      ? Icon(Icons.pause)
                      : Icon(Icons.play_arrow),
                ),
                Slider(
                    value: controller!.value.position.inSeconds.toDouble(),
                    min: 0,
                    max: controller!.value.duration.inSeconds.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        controller?.seekTo(Duration(seconds: value.toInt()));
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
