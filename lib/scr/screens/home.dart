import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:trevel_app/scr/models/places.dart';
import 'package:trevel_app/scr/screens/signin.dart';
import 'package:trevel_app/scr/screens/signup.dart';
import 'package:trevel_app/scr/screens/welcome.dart';
import 'package:trevel_app/scr/widgets/images_cards.dart';
import 'package:trevel_app/scr/widgets/listTile_search.dart';

class Home extends StatefulWidget {
  Place get place => null;


  @override
  _HomeState createState() => _HomeState(place);
}
//Future<List<Place>> search(String search) async {
//  await Future.delayed(Duration(seconds: 2));
//  return List.generate(search.length, (places) {
//    return Place(
//
//
//    );
//  });
//}
class _HomeState extends State<Home> {
  final Place place;
_HomeState(this.place);
  List<Place> places = [
    Place(name: 'Maglić', image: 'maglic.jpg', days: 7, price: 1100),
    Place(name: 'Bjelašnica', image: 'bjelasnica.jpg', days: 12, price: 1200),
    Place(name: 'Bali', image: '3.jpg', days: 3, price: 1200),
    Place(name: 'Austria', image: '1.jpg', days: 7),
    Place(name: 'India', image: '2.jpg', days: 12),
    Place(name: 'Bali', image: '3.jpg', days: 3),

  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
//      appBar: AppBar(
//        actions: <Widget>[
//          IconButton(
//            onPressed: () => showSearch(
//              context: context,
//              delegate: SearchPage<Place>(
//
//                items: places,
//                searchLabel: 'Search people',
//                suggestion: Center(
//                  child: Text('Filter people by name, surname or age'),
//                ),
//                failure: Center(
//                  child: Text('No person found :('),
//                ),
//                filter: (place) => [
//                  place.name,
//                  place.days.toString(),
//                  place.price.toString(),
//                ],
//                builder: (place) => ListTile(
//                  title: Text(place.name),
//                  subtitle: Text('${place.days} days'),
//                  trailing: Text('${place.price} €'),
//                  leading: ConstrainedBox(
//                    constraints: BoxConstraints(
//                      minWidth: 54,
//                      minHeight: 44,
//                      maxWidth: 64,
//                      maxHeight: 64,
//                    ),
//                    child: Image.asset('images/${place.image}', fit: BoxFit.cover),
//                  ),
//                ),
//              ),
//            ),
//            icon: Icon(Icons.search),
//          )
//        ],
//        centerTitle: true,
//        title: Text('Search Bar'),
//      ),
resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
//          decoration: new BoxDecoration(
//            image: new DecorationImage(image: new AssetImage("images/bih_border_map.jpg"), fit: BoxFit.fitWidth,),
//          ),

          width: screenSize.width,
          height: screenSize.height,
          constraints: BoxConstraints.expand(),


          child: Column(



            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),

                  MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Welcome()));
                      },
                      color:  new Color.fromRGBO(227, 51, 35, 1),
                      textColor: new Color.fromRGBO(227, 51, 35, 1),

                      child: Padding(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                        child: Icon(
                          Icons.arrow_back                                  ,
                          size: MediaQuery.of(context).size.height * 0.038,
                          color: Colors.white,

                        ),
                      ),
                      shape: CircleBorder()
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),


                  Row(
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


//                 Container(
//                          width:  MediaQuery.of(context).size.width * 0.7,
//                          height:  80,
//                          child: SearchBar()
//                   ),
                ],
              ),
//              SizedBox(height: MediaQuery.of(context).size.height * 0.07),




              Container(


                child: Align(
//                  alignment: Alignment.topLeft,
                  child: Center(
//                  padding: const EdgeInsets.only(left:20.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'who says the\n', style:  TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        ),),
                        TextSpan(text: 'JOURNEY ', style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  new Color.fromRGBO(227, 51, 35, 1),
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        )
                        ),
                        TextSpan(text: 'has to\n', style:  TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        ),),
                        TextSpan(text: "end once you've\n", style:  TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        ),),
                        TextSpan(text: 'reached your\n', style:  TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        ),),
                        TextSpan(text: 'DESTINATION', style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  new Color.fromRGBO(227, 51, 35, 1),
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        )),
                        TextSpan(text: '..?', style:  TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          color:  Colors.black,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],

                        ),),

                      ],),
                    ),
                  ),
                ),
              ),

//
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 10),
//                child: SearchBar( hintText: "Have a destination in mind?",hintStyle: TextStyle(fontSize: 15,  color: Colors.black45,
//                ),),
//              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 350,
                color: Colors.grey[300],
                child:     Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () => showSearch(
                            context: context,
                            delegate: SearchPage<Place>(
                              items: places,
                              searchLabel: 'Search place',
                              suggestion: ListTileSearch(),
                              failure: Center(
                                child: Text('No person found :('),
                              ),
                              filter: (place) => [
                                place.name,
                                place.days.toString(),
                                place.price.toString(),
                              ],
                              builder: (place) => ListTile(
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
                          icon: Icon(Icons.search),

                        ),
                      MaterialButton(
                        onPressed: () => showSearch(
                          context: context,
                          delegate: SearchPage<Place>(
                            barTheme: ThemeData(
                            ),
                            items: places,
                            searchLabel: 'Search place',
                            suggestion:Center(),
                            failure: Center(
                              child: Text('No person found :('),
                            ),
                            filter: (place) => [
                              place.name,
                              place.days.toString(),
                              place.price.toString(),
                            ],
                            builder: (place) => ListTile(
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
                        minWidth: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.06,



//                                padding: const EdgeInsets.only(left:25.0,right:25.0,top:15.0,bottom:15.0),
                        child: Text(
                          "Have a destination in mind?",
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontSize:MediaQuery.of(context).size.height * 0.023,

                              color: Colors.black45,
//                                      fontWeight: FontWeight.bold,
                              ),
                        ),



                      ),
                    ],
                  ),
                ),
                ),
              ),


//              Padding(
//                padding:  EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
//                child: SizedBox(
//                    width: 300,
//                    height: 80,
//                    child: SearchBar(
//                      hintText: "Have a destination in mind?",hintStyle: TextStyle(fontSize: 15,  color: Colors.black45,
//                    ),
//                    )
//                ),
//              ),

              Expanded(child: Container(child: ImageCards())),

            ],
          ),
        ),
      ),
    );
  }
}


















