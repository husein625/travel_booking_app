import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trevel_app/scr/screens/about.dart';
import 'package:trevel_app/scr/screens/signin.dart';
import 'package:trevel_app/scr/screens/signup.dart';
import 'package:trevel_app/scr/widgets/chewie_video.dart';

import 'home.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.portraitUp,
//      DeviceOrientation.portraitDown,
//    ]);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Container(
        width: screenSize.width,
        height: screenSize.height,
        constraints: BoxConstraints.expand(),
     child: Stack(
        children: <Widget>[
          Image.asset(
            'images/mmaglic.jpg',
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

//                      Colors.black.withOpacity(0.8),
//                      Colors.black.withOpacity(0.7),
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



       Column(
             mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[





                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                              onPressed: () {


                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Signin()), (Route<dynamic> route) => false);
                              },

                              color: new Color.fromRGBO(227, 51, 35, 1),
                              minWidth: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.03,



//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                              child: Text(
                                "Sign in",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize:MediaQuery.of(context).size.height * 0.02,

                                    color: Colors.white,
//                                      fontWeight: FontWeight.bold,
                                    height: 1.0),
                              ),



                            ),



                           MaterialButton(
                              onPressed: () {


                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Signup()), (Route<dynamic> route) => false);
                              },

                              minWidth: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.03,


                              color: Colors.white,

//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                              child: Text(
                                "Sign up",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize:MediaQuery.of(context).size.height * 0.02,

                                    color:new Color.fromRGBO(227, 51, 35, 1) ,
//                                      fontWeight: FontWeight.bold,
                                    height: 1.0),
                              ),



                            ),


                        ],
                      ),

                    Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "Days     ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.017,
                              color: Colors.black,
                              height: 1.0),
                        )

                    ),   Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "09 ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.0),
                        )

                    ),


                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),



                    Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "Nights     ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.017,
                              color: Colors.black,
                              height: 1.0),
                        )

                    ),   Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "08 ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.0),
                        )

                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),


                    Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "Countries     ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.017,
                              color: Colors.black,
                              height: 1.0),
                        )

                    ),   Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "01 ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.0),
                        )

                    ),


                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,

                    ),


                    Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "Mountains     ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.017,
                              color: Colors.black,
                              height: 1.0),
                        )

                    ),   Align(
                        alignment: Alignment.topRight,

                        child: Text(
                          "05 ",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.06,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              height: 1.0),
                        )

                    ),




                    //play-button
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children: <Widget>[
                                MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                              transitionDuration: Duration(seconds: 2),
                                              pageBuilder: (_, __, ___) => ChewieDemo()));

                                    },
                                    color: Colors.transparent,
                                    textColor: new Color.fromRGBO(227, 51, 35, 1),

                                    child: Hero(
                                      tag: "profile-image",
                                      child: Icon(
                                        Icons.play_circle_outline,
                                        size: MediaQuery.of(context).size.height * 0.06,
                                      ),
                                    ),
                                    shape: CircleBorder()
                                ),
                                Text(
                                  "Watch reel",
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.018,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                        ),


                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01
                    ),


                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                      " Routes \n through BiH",
                      textScaleFactor: 1,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.06,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                      height: 1.0),
                    )),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child:Text(
                          "          Bosnia and Herzegovina has facilities  \n          for road, rail,  and  air transport. There   \n          are five  international road routes and  \n          20 state highways, with bus connections  \n          to many countries",
                      style: TextStyle(
                          fontSize:MediaQuery.of(context).size.height * 0.022,

                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04
                    ),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                                            Padding(

                      padding:EdgeInsets.only(left:MediaQuery.of(context).size.height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: MaterialButton(
                              onPressed: () {


                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Home()), (Route<dynamic> route) => false);
                              },

                                    color: new Color.fromRGBO(227, 51, 35, 1),
                              minWidth: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.06,



//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                                  child: Text(
                                   "Book Now",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        fontSize:MediaQuery.of(context).size.height * 0.02,

                                        color: Colors.white,
//                                      fontWeight: FontWeight.bold,
                                        height: 1.0),
                                  ),



                            ),
                          ),

                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),


                          Align(
                            alignment: Alignment.bottomLeft,
                            child: MaterialButton(
                              onPressed: () {


                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => About()), (Route<dynamic> route) => false);
                              },

                              minWidth: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.06,



//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                              child: Text(
                                "More Info",
                                textScaleFactor: 1,
                                style: TextStyle(
                                    fontSize:MediaQuery.of(context).size.height * 0.02,

                                    color: Colors.white,
//                                      fontWeight: FontWeight.bold,
                                    height: 1.0),
                              ),



                            ),
                          ),


                        ],
                      ),
                    ),

                      ],),
                    SizedBox(
                      height: 20,
                    ),


                  ],
                ),
        ],
      ),
      )
    );
  }
}

