import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:trevel_app/scr/models/places.dart';
import 'package:trevel_app/scr/screens/signin.dart';
import 'package:trevel_app/scr/screens/signup.dart';
import 'package:trevel_app/scr/screens/welcome.dart';

import 'about.dart';
import 'home.dart';

class Signin extends StatefulWidget {


  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = [ "Stay signed in"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body:
      Stack(
        children: <Widget>[


          ClipRRect(
            borderRadius: BorderRadius.only(
//              bottomLeft: Radius.circular(40.0),
//              bottomRight: Radius.circular(40.0),
            ),
            child: Container(
              child: Image.asset(
                'images/jajce2.jpg',
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,            ),
            ),

          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[



              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,

              ),


              Align(
                alignment: Alignment.topLeft,
                child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
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

              Padding(
                padding:const  EdgeInsets.all(15.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all( Radius.circular(20.0)),
                  ),


                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "Don't have an account?",
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontSize:MediaQuery.of(context).size.height * 0.02,
                                  color: Colors.black54,
                                  height: 1.0),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.09,

                          ),


                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Signup()), (Route<dynamic> route) => false);

                            },
//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                            child: Text(
                              "Sign up",
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontSize:MediaQuery.of(context).size.height * 0.02,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.red,
                                  height: 1.0),
                            ),
                          ),

                        ],
                      ),

                      Center(
//                            alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text(
                            "Sign in with",
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1.0),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,

                      ),


                      Row(
                        children: [
                          IconButton(
                            icon: Image.asset('icons/facebook.png',height: 20,width: 20),
                            onPressed: () {
                            },
                          ),


                          Text(
                            "Facebook",
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.015,
                                color: Colors.black38,
                                height: 1.0),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,

                          ),



                          IconButton(
                            icon: Image.asset('icons/google.png',height: 20,width: 20),
                            iconSize: 10,
                            onPressed: () {

                            },
                          ),
                          Text(
                            "Google",
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.015,
                                color: Colors.black38,
                                height: 1.0),
                          ),
                        ],
                      ),





                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),

                          Text(
                            "OR",
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontSize:MediaQuery.of(context).size.height * 0.018,

                                color: Colors.black38,
                                height: 1.0),
                          ),
                          Container(
                            width: 100,
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),

                        ],
                      ),

                      SizedBox(
                        height: 20,

                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0, right: 15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            decoration: InputDecoration(

                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  fontSize:MediaQuery.of(context).size.height * 0.018,
                                )

                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0, right: 15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontSize:MediaQuery.of(context).size.height * 0.018,
                                )

                            ),
                          ),
                        ),
                      ),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CheckboxGroup(
                            activeColor:  new Color.fromRGBO(227, 51, 35, 1),
                            labels: <String>[
                              "Stay signed in",
                            ],

                            onChange: (bool isChecked, String label, int index) => print("isChecked: $isChecked   label: $label  index: $index" ),
                            onSelected: (List<String> checked) => print("checked: ${checked.toString()}"),
                          ),

                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => About()), (Route<dynamic> route) => false);
                            },
//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                            child: Text(
                              "Forgot password?",
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontSize:MediaQuery.of(context).size.height * 0.018,

                                  color: Colors.black54,
                                  height: 1.0),
                            ),
                          ),





                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(20.0),
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                          },
                          color: new Color.fromRGBO(227, 51, 35, 1),
                          minWidth:  double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:18.0),
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize:MediaQuery.of(context).size.height * 0.02,

                              color: Colors.white,
//                                      fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),













            ],
          ),
        ],
      ),
    );
  }
}
