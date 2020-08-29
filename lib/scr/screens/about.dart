//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:trevel_app/scr/screens/welcome.dart';
//
//import 'home.dart';
//
//class About extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body:SafeArea(
//      child:Stack(
//        children: <Widget>[
//          Container(
//            decoration: new BoxDecoration(
//              image: new DecorationImage(image: new AssetImage("images/cycling.jpg"), fit: BoxFit.cover),
//            ),
//          ),
//          Align(
//            alignment: Alignment.bottomCenter,
//            child: Container(
//                height: double.infinity,
//                width: double.infinity,
//                decoration: BoxDecoration(
//                  // Box decoration takes a gradient
//                  gradient: LinearGradient(
//                    // Where the linear gradient begins and ends
//                    begin: Alignment.bottomCenter,
//                    end: Alignment.topCenter,
//                    // Add one stop for each color. Stops should increase from 0 to 1
//                    colors: [
//                      // Colors are easy thanks to Flutter's Colors class.
////                      Colors.black.withOpacity(1),
////
////                      Colors.black.withOpacity(0.9),
//
//                      Colors.black.withOpacity(0.8),
//                      Colors.black.withOpacity(0.7),
//                      Colors.black.withOpacity(0.6),
//                      Colors.black.withOpacity(0.5),
//                      Colors.black.withOpacity(0.4),
//                      Colors.black.withOpacity(0.1),
//                      Colors.black.withOpacity(0.05),
//                      Colors.black.withOpacity(0.025),
//                    ],
//                  ),
//                ),
//                child: Padding(
//                    padding: const EdgeInsets.only(top: 8.0),
//                    child: Container())),
//          ),
//
//          Align(
//            alignment: Alignment.topLeft,
//            child:IconButton(
//              icon: Image.asset('icons/bih.png'),
//              iconSize: 40,
//              onPressed: () {                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Welcome
//                ()));
//              },
//            ),
//
//          ),
//
//
//          Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//
//              SizedBox(
//                height: 15,
//              ),
//
//
//
//
//
//              SizedBox(
//                height:40,
//              ),
//
//
//
//              Align(
//                  alignment: Alignment.topCenter,
//                  child: Text(
//                    " Who are we?",
//                    textScaleFactor: 1,
//                    style: TextStyle(
//                        fontSize: 60,
//                        color: Colors.white,
//                        fontWeight: FontWeight.bold,
//                        height: 1.0),
//                  )),
//              SizedBox(
//                height: 20,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                  Align(
//                      alignment: Alignment.centerLeft,
//                      child:Container(
//                        width: MediaQuery.of(context).size.width,
//                        child: Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: Text(
//                            "We are committed to establishing a long-lasting partnership with our staff. A thorough review of all applications is essential. Our recruitment process takes several months "
//                                "as it involves a number of steps which may include screening, written test, interview, and assessment centre."
//                                "Bosnia and Herzegovina has facilities for road, rail, and air transport. There are five international road routes and 20 state highways, with bus connections to many countries."
//   "Bosnia and Herzegovina has facilities for road, rail, and air transport. There are five international road routes and 20 state highways, with bus connections to many countries.",
//                            style: TextStyle(
//                                fontSize: 18,
//                                color: Colors.white,
//                                fontWeight: FontWeight.w400,
//                            height: 1.5),
//                          ),
//                        ),
//                      )),
//                ],
//              ),
//
//              SizedBox(
//                height: 20,
//              ),
//
//
//             Row(
//                          mainAxisAlignment:MainAxisAlignment.start,
//                          children: <Widget>[
//
//                            MaterialButton(
//                                onPressed: () {
//                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Welcome()));
//                                },
//                                color:  new Color.fromRGBO(227, 51, 35, 1),
//                                textColor: new Color.fromRGBO(227, 51, 35, 1),
//
//                                child: Padding(
//                                  padding: const EdgeInsets.all(10.0),
//                                  child: Icon(
//                                    Icons.arrow_back                                  ,
//                                    size: 30,
//                                    color: Colors.white,
//
//                                  ),
//                                ),
//                                shape: CircleBorder()
//                            ),
//
//                            Text(
//                              "Go Back",
//                              style: TextStyle(
//                                  fontSize: 15,
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold),
//                            )
//                          ],
//                        )
//
//            ],
//          ),
//        ],
//      ),
//      )
//    );
//  }
//}
//




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trevel_app/scr/screens/about.dart';
import 'package:trevel_app/scr/screens/welcome.dart';

import 'home.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body:Container(
          width: screenSize.width,
          height: screenSize.height,
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: <Widget>[
              Image.asset(
                'images/cycling.jpg',
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



                  Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    " Who are we?",
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.08,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.0),
                  )),


                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.022
                  ),


                                Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child:Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "We are committed to establishing a long-lasting partnership with our staff.",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.026,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                            height: 1.5),
                          ),
                        ),
                      )),

                Align(
                      alignment: Alignment.centerLeft,
                      child:Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "A thorough review of all applications is essential. Our recruitment process takes several months "
                                "as it involves a number of steps which may include screening, written test, interview, and assessment centre.",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.026,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                            height: 1.5),
                          ),
                        ),
                      )),


                Align(
                      alignment: Alignment.centerLeft,
                      child:Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Bosnia and Herzegovina has facilities for road, rail, and air transport. There are five international road routes and 20 state highways, with bus connections to many countries.",
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.026,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                            height: 1.5),
                          ),
                        ),
                      )),
                ],
              ),


                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05
                  ),




                  Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: <Widget>[

                            MaterialButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Welcome()));
                                },
                                color:  new Color.fromRGBO(227, 51, 35, 1),
                                textColor: new Color.fromRGBO(227, 51, 35, 1),

                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.arrow_back                                  ,
                                    size: MediaQuery.of(context).size.height * 0.04,
                                    color: Colors.white,

                                  ),
                                ),
                                shape: CircleBorder()
                            ),

                            Text(
                              "Go Back",
                              style: TextStyle(
                                  fontSize:MediaQuery.of(context).size.height * 0.025,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),

                            SizedBox(
                                height: 40,
                            ),


                          ],
                        ),
                  SizedBox(
                    height: 40,
                  ),




                ],
              ),
            ],
          ),
        )
    );
  }
}

