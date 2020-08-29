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
            title: Text(place.name),
            subtitle: Text('${place.days} days'),
            trailing: Text('${place.price} €'),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 54,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('images/${place.image}', fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}










