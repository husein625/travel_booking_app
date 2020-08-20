import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trevel_app/scr/models/places.dart';

import 'home.dart';

class Details extends StatefulWidget {
    final Place place;


  Details(this.place);
  @override
  _DetailsState createState() => _DetailsState(place);
}
  GoogleMapController mapController;

  final LatLng _center = const LatLng(43.275332232,18.735497058);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }



class _DetailsState extends State<Details> {
  final Place place;

  _DetailsState(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/${place.image}',
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
            mainAxisAlignment: MainAxisAlignment.end,
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

              Align(
                alignment: Alignment.centerLeft,
                child: MaterialButton(
                              onPressed: () {
//                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => About()), (Route<dynamic> route) => false);
                              },
                              color: Colors.transparent,
                              textColor: new Color.fromRGBO(227, 51, 35, 1),

                              child: Icon(
                                Icons.play_circle_outline,
                                size: MediaQuery.of(context).size.height * 0.06,
                              ),
                              shape: CircleBorder()
                          ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,

                child: Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text(
                    "${place.name}",
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.06,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                  "${place.description}",
                  style: TextStyle(
                      fontSize:MediaQuery.of(context).size.height * 0.022,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
             ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
//    child: Image.asset('images/${widget.place.image}', height: 400, width: double.infinity, fit: BoxFit.fill,),


                    child:    Container(
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),


                  ),
                ),


              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:  MaterialButton(
                  onPressed: () {


//                                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Home()), (Route<dynamic> route) => false);
                  },

                  color: new Color.fromRGBO(227, 51, 35, 1),
                  minWidth: MediaQuery.of(context).size.width * 0.35,
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
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:trevel_app/scr/models/places.dart';
//import 'package:trevel_app/scr/screens/about.dart';
//import 'package:trevel_app/scr/screens/welcome.dart';
//
//import 'home.dart';
//
//class Details extends StatefulWidget {
//  final Place place;
//
//
//  Details(this.place);
//
//
//  @override
//  _DetailsState createState() => _DetailsState(place);
//}
//
//  GoogleMapController mapController;
//
//  final LatLng _center = const LatLng(43.275332232,18.735497058);
//
//  void _onMapCreated(GoogleMapController controller) {
//    mapController = controller;
//  }
//
//
//
//class _DetailsState extends State<Details> {
//  final Place place;
//
//  _DetailsState(this.place);
//
//  @override
//  Widget build(BuildContext context) {
//    final screenSize = MediaQuery.of(context).size;
//    return Scaffold(
//        body:Container(
//          width: screenSize.width,
//          height: screenSize.height,
//          constraints: BoxConstraints.expand(),
//          child: Stack(
//            children: <Widget>[
//              Image.asset(
//                'images/${place.image}',
//                fit: BoxFit.fill,
//                height: double.infinity,
//                width: double.infinity,
//              ),
//              Align(
//                alignment: Alignment.bottomCenter,
//                child: Container(
//                  height: double.infinity,
//                  width: double.infinity,
//                  decoration: BoxDecoration(
//                    // Box decoration takes a gradient
//                    gradient: LinearGradient(
//                      // Where the linear gradient begins and ends
//                      begin: Alignment.topCenter,
//                      end: Alignment.bottomCenter,
//                      // Add one stop for each color. Stops should increase from 0 to 1
//                      colors: [
////                        // Colors are easy thanks to Flutter's Colors class.
////                      Colors.black.withOpacity(1),
////
////                      Colors.black.withOpacity(0.9),
////
////                      Colors.black.withOpacity(0.8),
////                      Colors.black.withOpacity(0.7),
//                        Colors.black.withOpacity(0.5),
//                        Colors.black.withOpacity(0.4),
//                        Colors.black.withOpacity(0.3),
//                        Colors.black.withOpacity(0.1),
//                        Colors.black.withOpacity(0.05),
//                        Colors.black.withOpacity(0.025),
//                      ],
//                    ),
//                  ),
//                ),
//              ),
//
//
//
//              Column(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//
//                  Align(
//                    alignment: Alignment.topLeft,
//                    child:IconButton(
//                      icon: Image.asset('icons/bih.png'),
//                      iconSize: MediaQuery.of(context).size.height * 0.015,
//                      onPressed: () { Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Home()), (Route<dynamic> route) => false);
//                      },
//                    ),
//
//                  ),
//
//
//             Align(
//               alignment: Alignment.topLeft,
//               child: MaterialButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));
//                   },
//                   color:  new Color.fromRGBO(227, 51, 35, 1),
//                   textColor: new Color.fromRGBO(227, 51, 35, 1),
//
//                   child: Padding(
//                     padding: const EdgeInsets.all(1.0),
//                     child: Icon(
//                       Icons.arrow_back                                  ,
//                       size: 20,
//                       color: Colors.white,
//
//                     ),
//                   ),
//                   shape: CircleBorder()
//               ),
//
//             ),
//
//
//                  SizedBox(
////                    height: 140
//                  ),
//
//
//
//                  SizedBox(
//                      height: 20
//                  ),
//
//
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Row(
//                      children: <Widget>[
//                        Align(
//                            alignment: Alignment.bottomLeft,
//                            child: Text(
//                              "${place.name}",
//                              textScaleFactor: 1,
//                              style: TextStyle(
//                                  fontSize: 40,
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold,
//                                  height: 1.0),
//                            )),
//                        MaterialButton(
//                            onPressed: () {                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => About()), (Route<dynamic> route) => false);
//                            },
//                            color: Colors.transparent,
//                            textColor: new Color.fromRGBO(227, 51, 35, 1),
//
//                            child: Icon(
//                              Icons.play_circle_outline,
//                              size: MediaQuery.of(context).size.height * 0.06,
//                            ),
//                            shape: CircleBorder()
//                        ),
//                      ],
//                    ),
//                  ),
//                  SizedBox(
//                      height: MediaQuery.of(context).size.height * 0.01
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(20.0),
//                    child: Align(
//                        alignment: Alignment.bottomLeft,
//                        child:Text(
//                          "${place.description}",
//                          style: TextStyle(
//                              fontSize:13,
//
//                              color: Colors.white,
//                              fontWeight: FontWeight.w400),
//                        )),
//                  ),
//
//                  SizedBox(
//                      height: MediaQuery.of(context).size.height * 0.02
//                  ),
//
//                  Align(
//                  child: Container(
//                width: MediaQuery.of(context).size.width * 0.85,
//                      height: MediaQuery.of(context).size.height * 0.18,
//                child: ClipRRect(
//          borderRadius: BorderRadius.all(Radius.circular(5)),
////    child: Image.asset('images/${widget.place.image}', height: 400, width: double.infinity, fit: BoxFit.fill,),
//
//
//                child:    Container(
//                  child: GoogleMap(
//                    onMapCreated: _onMapCreated,
//                    initialCameraPosition: CameraPosition(
//                      target: _center,
//                      zoom: 11.0,
//                    ),
//                  ),
//                ),
//
//
//                ),
//              ),
//
//
//                  ),
//
//                  SizedBox(
//                      height: 30
//                  ),
//
//                  Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Padding(
//
//                        padding:EdgeInsets.only(left:MediaQuery.of(context).size.height * 0.02),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Align(
//                              alignment: Alignment.center,
//                              child: MaterialButton(
//                                onPressed: () {
//
//
////                                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Home()), (Route<dynamic> route) => false);
//                                },
//
//                                color: new Color.fromRGBO(227, 51, 35, 1),
//                                minWidth: MediaQuery.of(context).size.width * 0.35,
//                                height: MediaQuery.of(context).size.height * 0.06,
//
//
//
////                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
//                                child: Text(
//                                  "Book Now",
//                                  textScaleFactor: 1,
//                                  style: TextStyle(
//                                      fontSize:MediaQuery.of(context).size.height * 0.02,
//
//                                      color: Colors.white,
////                                      fontWeight: FontWeight.bold,
//                                      height: 1.0),
//                                ),
//
//
//
//                              ),
//                            ),
//
//
//                          ],
//                        ),
//                      ),
//
//                    ],)
//                ],
//              ),
//            ],
//          ),
//        )
//    );
//  }
//}
//
