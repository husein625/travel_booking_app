import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trevel_app/scr/models/places.dart';

import 'home.dart';

class Signin extends StatefulWidget {


  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[


          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
            child: Container(
                child: Image.asset(
                  'images/jajce2.jpg',
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,            ),
            ),
          ),
//          ClipRect(
//
//            child: Image.asset(
//              'images/jajce2.jpg',
//              fit: BoxFit.fill,
//              height: MediaQuery.of(context).size.height * 0.6,
//              width: double.infinity,            ),
//          ),

//          Container(
//            child: Image.asset(
//              'images/jajce2.jpg',
//              fit: BoxFit.fill,
//              height: MediaQuery.of(context).size.height * 0.6,
//              width: double.infinity,
//            ),
//          ),
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
//
//                      Colors.black.withOpacity(0.8),
//                      Colors.black.withOpacity(0.7),
//                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container())),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end
            ,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));
                    },
                    color:  new Color.fromRGBO(227, 51, 35, 1),
                    textColor: new Color.fromRGBO(227, 51, 35, 1),

                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(
                        Icons.arrow_back                                  ,
                        size: 20,
                        color: Colors.white,

                      ),
                    ),
                    shape: CircleBorder()
                ),

              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
