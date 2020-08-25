import 'package:flutter/material.dart';
import 'package:trevel_app/scr/models/places.dart';

class ListTileSearch extends StatefulWidget {
  final Place place;
  final String text;

  ListTileSearch({this.place, this.text});

  @override
  _ListTileSearchState createState() => _ListTileSearchState(place);
}

class _ListTileSearchState extends State<ListTileSearch> {
  final Place place;

  _ListTileSearchState(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
