import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';
import 'package:trevel_app/scr/screens/details.dart';

class ImageCard extends StatelessWidget {
  final String name;
  final int days;
  final String picture;
  final Place place;
  final String description;
  final int price;

  ImageCard({@required this.name,@required this.days,@required this.picture, this.place, @required this.description, @required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> Details(place)));
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                Color.fromARGB(62, 168, 174, 201),
                offset: Offset(0, 9),
                blurRadius: 14,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "images/$picture",
                  height: double.infinity,
                  width: 180,
                  fit: BoxFit.cover,
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
//                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.025),
                          ],
                        ),
                      ),

                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container()
                      )),
                ),

                Positioned(
                  top: 5,
                  right: 6,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: 'Check', style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                        ]))
                    ),
                  ),
                ),
                Positioned(
                  bottom: 110,
                  left: 2,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: '$name ', style: TextStyle(fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                        ]))
                    ),
                  ),
                ),

         Positioned(
                  bottom: 30,
                  left: 2,
                  right: 10,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: '$description ', style: TextStyle(fontSize: 10,
                            fontWeight: FontWeight.bold,
                          )),
                        ]))
                    ),
                  ),
                ),

                Positioned(
                  bottom: 10,
                  left: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today, color: Colors.white, size: 14,),
                        SizedBox(width: 5,),
                        Text('$days days', style: TextStyle(color: Colors.white))
                          ],
                        )
                    ),
                  ),
                ),

          Positioned(
                  bottom: 10,
                  right: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          children: <Widget>[
                        SizedBox(width: 5,),
                        Text('$price€', style: TextStyle(color: Colors.white))
                          ],
                        )
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
