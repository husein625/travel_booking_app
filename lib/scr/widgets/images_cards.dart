

import 'package:flutter/cupertino.dart';
import 'package:trevel_app/scr/models/places.dart';

import 'image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> places = [
    Place(name: 'Maglić', image: 'maglic.jpg', days: 7, price: 1100, description:"Maglić je dinarska planina u Bosni i Hercegovini, na državnoj granici s Crnom Gorom s najvišim vrhom u Bosni i Hercegovini od 2386 metara."),
    Place(name: 'Bjelašnica', image: 'bjelasnica.jpg', days: 12, price: 1200,description: "Bjelašnica je planina u centralnom dijelu Bosne i Hercegovine, pripada dinarskom planinskom sistemu. Susjedne planine su joj Igman sa sjeverne strane."),
    Place(name: 'Bali', image: '3.jpg', days: 3, price: 1200),
    Place(name: 'Austria', image: '1.jpg', days: 7),
    Place(name: 'India', image: '2.jpg', days: 12),
    Place(name: 'Bali', image: '3.jpg', days: 3),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].name,
                days: places[index].days,
                picture: places[index].image,
                price: places[index].price,
                description: places[index].description,
              );
            }));
  }
}


