
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';
import 'package:trevel_app/scr/screens/details.dart';
import 'package:trevel_app/scr/screens/welcome.dart';
import 'package:video_player/video_player.dart';


class ChewiePromo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ChewiePromoState();
  }
}

class _ChewiePromoState extends State<ChewiePromo> {

  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.asset('images/timelapse.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return  Scaffold(


      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(

            color: Colors.blueGrey[100] ),
        child:
        Stack(
          children: [
            Image.asset(
              'images/maglic.jpg',
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
//                      Colors.black.withOpacity(1),
//
//                      Colors.black.withOpacity(0.9),

                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
//                      Colors.black.withOpacity(1),
//
//                      Colors.black.withOpacity(0.9),

                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
              ),
            ),



            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      "Promo video",
                      textScaleFactor: 1,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.06,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.0),
                    ),
                  ),
                ],
              ),
            ),

            Hero(
              tag: "profile-image",
              child: Chewie(
                controller: _chewieController,
              ),
            ),



            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),

                  MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                pageBuilder: (_, __, ___) => Welcome()));                  },
                      color:  new Color.fromRGBO(227, 51, 35, 1),
                      textColor: new Color.fromRGBO(227, 51, 35, 1),

                      child: Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                        child: Icon(
                          Icons.arrow_back                                  ,
                          size: MediaQuery.of(context).size.height * 0.038,
                          color: Colors.white,

                        ),
                      ),
                      shape: CircleBorder()
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



