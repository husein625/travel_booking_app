import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconCard({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(icon: Image.asset('icons/png/047-quad.png'),
               onPressed: (){},)),
          Text(text, style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
