// ignore: unused_import
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/profile.dart';

import 'cart.dart';
import 'near_by.dart';
//import 'package:flutter_icons/flutter_icons.dart';

// ignore: import_of_legacy_library_into_null_safe
//import 'package:dropdown_search/dropdown_search.dart';

// ignore: import_of_legacy_library_into_null_safe




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }

  // ignore: unused_field
  List<Widget> _widgetOptions = <Widget>[
    home(),
    Nearby(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: FloatingNavbar(
        items: [
          FloatingNavbarItem(title: "Home", icon: Icons.home),
          FloatingNavbarItem(title: "Near By", icon: Icons.explore),
          FloatingNavbarItem(title: "cart", icon: Icons.local_grocery_store),
          FloatingNavbarItem(title: "Profile", icon: Icons.person),
        ],
        selectedBackgroundColor: Colors.black,
        selectedItemColor: Colors.yellow[600],
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _changeItem,
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}

class home extends StatelessWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Column(children: [
          Container(
              child: Column(children: [
            Row(children: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Barcelona, Spain",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Expanded(child: Container()),
              Icon(Icons.notifications),
            ]),
          ])),

          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 9,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search",
                      ),
                    ),
                  )),
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 0, top: 10, bottom: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    Icons.filter_list,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(children: [
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      child: Row(
                        children: [
                          //////*************************** */

                          Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                Icon(
                                  Icons.local_cafe,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("BreakFast",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ])),

                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(children: [
                              Column(children: [
                                Icon(
                                  Icons.local_cafe,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("    Burger    ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ]),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(children: [
                              Column(children: [
                                Icon(
                                  Icons.local_cafe,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("    Coffee    ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ]),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(children: [
                              Column(children: [
                                Icon(
                                  Icons.local_cafe,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("     Pizza     ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ]),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(children: [
                              Column(children: [
                                Icon(
                                  Icons.local_cafe,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("  Sandwish  ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ]),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(children: [
                              Column(children: [
                                Icon(
                                  Icons.local_cafe,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("   Pancake   ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))),
                              ]),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
          Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 27),
              child: Column(children: [
                Row(children: [
                  Row(
                    children: [
                      Text(
                        "Fovorite",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey[500],
                    size: 25,
                  ),
                ]),
              ])),
          Container(
              child: Column(children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    child: Row(children: [
                      //////*************************** */

                      /*   Container(
                        width: 300,
                        height: 200,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(children: [
                          /* Column(children: [
                            Icon(
                              Icons.local_cafe,
                              color: Colors.white,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("BreakFast",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
                          ]),*/
                        ]),
                      ),*/

                      //container

                      ProduitElement(
                          imageURL:
                              "https://cdn.shopify.com/s/files/1/0744/1573/products/Burger_1_300x300@2x.jpg?v=1602754426",
                          nomProduit: "Hut Burger",
                          tagProduit: "Burger * Fast food * American Burger",
                          priceProduit: "S12.00"),
                      ProduitElement(
                          imageURL:
                              "https://th.bing.com/th/id/OIP.X5x_JV_0sdDfeiIDDpHxzwHaEK?pid=ImgDet&rs=1",
                          nomProduit: "Pancakes",
                          tagProduit: "Fruits * BlueBerry * strawberry ",
                          priceProduit: "S50.00"),

                      //con
                    ]),
                  ),
                ]),
              ),
            ),
          ])),
          //begin recommanded
          Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Recommanded",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ]),
          //end recommanded
          Container(
              child: Column(children: [
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                    child: Row(children: [
                  Container(
                    width: 200,
                    height: 300,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(children: [
                      /* Column(children: [
                            Icon(
                              Icons.local_cafe,
                              color: Colors.white,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("BreakFast",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
                          ]),*/
                    ]),
                  ),
                  Container(
                    width: 200,
                    height: 300,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(children: [
                      /* Column(children: [
                            Icon(
                              Icons.local_cafe,
                              color: Colors.white,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("BreakFast",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
                          ]),*/
                    ]),
                  ),
                ])),
              ]),
            ))
          ]))
        ]),
      ),
    );
  }
}

class ProduitElement extends StatelessWidget {
  const ProduitElement({
    Key? key,
    required this.imageURL,
    required this.nomProduit,
    required this.tagProduit,
    required this.priceProduit,
  }) : super(key: key);
  final String imageURL, nomProduit, tagProduit, priceProduit;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth, image: NetworkImage(this.imageURL)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)))),
        ),
        Expanded(
          flex: 1,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(this.nomProduit),
            Text(this.tagProduit,
                style: TextStyle(
                  color: Colors.grey[500],
                )),
            Text(this.priceProduit,
                style: TextStyle(
                  color: Colors.yellow,
                ))
          ]),
        )
      ]),
    );
  }
}
