import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';
import 'package:trevel_app/scr/screens/details.dart';

class ListTileSearch extends StatelessWidget {
  final String name;
  final int days;
  final String picture;
  final Place place;
  final String description;
  final int price;

  ListTileSearch({@required this.name,@required this.days,@required this.picture, this.place, @required this.description, @required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> Details(place)));
        },
        child: Card(
          child: ListTile(
            leading:  Image.asset(
              "images/$picture",
// height:100,
// width: 180,
// fit: BoxFit.cover,
            ),
            title: Text('$name'),
            subtitle: Text('$days'),
            trailing: Text('$price'),
            // isThreeLine: true,


          ),
        ),
      ),
    );
  }
}










