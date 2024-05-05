import 'package:flutter/material.dart';

class Se extends StatefulWidget {
  @override
  _SeState createState() => _SeState();
}

class _SeState extends State<Se> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(left: 0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ),
            Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //kbira
                    child: Row(children: [
                      Container(
                        // 1
                        child: Text("Filter : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black)),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(children: [
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("Food",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ))),
                          Icon(
                            Icons.clear,
                            size: 15,
                            color: Colors.white,
                          ),
                        ]),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.euro, color: Colors.white, size: 14),
                            Text("0  - ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                )),
                            Icon(
                              Icons.euro,
                              color: Colors.white,
                              size: 14,
                            ),
                            Text("80 ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                )),
                            Icon(
                              Icons.clear,
                              size: 15,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.white,
                            ),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(" 4 ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ))),
                            Icon(
                              Icons.clear,
                              size: 15,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(children: [
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("Pizza",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ))),
                          Icon(
                            Icons.clear,
                            size: 15,
                            color: Colors.white,
                          ),
                        ]),
                      ),
                    ]),
                  ),
                ]),
            Container(
              child: Column(children: [
                ListView(children: <Widget>[
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.only(right: 15.0),
                    width: MediaQuery.of(context).size.width - 30.0,
                    height: MediaQuery.of(context).size.height - 50.0,
                    child: GridView.count(
                        crossAxisCount: 2,
                        primary: false,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 15.0,
                        childAspectRatio: 0.8,
                        children: <Widget>[
                          ProduitElement(
                              imageURL:
                                  "https://media-cdn.tripadvisor.com/media/photo-s/06/58/51/40/veggie-hot-one.jpg",
                              nomProduit: "Pizza Hut",
                              priceProduit: "50.00"),
                          ProduitElement(
                              imageURL:
                                  "https://www.galbani.fr/wp-content/uploads/2020/03/AdobeStock_67818733-2-800x600.jpeg",
                              nomProduit: "pizza 4 saisons",
                              priceProduit: "65.00"),
                          ProduitElement(
                              imageURL:
                                  "https://recette.supertoinette.com/150260/b/pizza-napolitaine.jpg",
                              nomProduit: "pizza napolitaine",
                              priceProduit: "39.00"),
                          ProduitElement(
                              imageURL:
                                  "https://fastly.4sqi.net/img/general/600x600/24338891_vhYRod7OoKRzykHt17q9DSDMqMpNh4wFcPPtIByuODg.jpg",
                              nomProduit: "pizza pepperoni",
                              priceProduit: "42.00"),
                          ProduitElement(
                              imageURL:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW0ravhofKEARg3C9EvZAKUMdAgHthAjC-iw&usqp=CAU",
                              nomProduit: "pizza vegetariana",
                              priceProduit: "36.00"),
                        ]),
                  ),
                ])
              ]),
            ),
          ]),
        )));
  }
}

class ProduitElement extends StatelessWidget {
  const ProduitElement({
    Key? key,
    required this.imageURL,
    required this.nomProduit,
    required this.priceProduit,
  }) : super(key: key);
  final String imageURL, nomProduit, priceProduit;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Expanded(
            flex: 3,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(this.imageURL)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)))),
          ),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                  this.nomProduit,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(children: [
                  Icon(
                    Icons.euro,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text(this.priceProduit,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
              ])),
        ]));
  }
}
