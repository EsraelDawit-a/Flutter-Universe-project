import 'package:flutter/material.dart';
import './data.dart';
import './detail_page.dart';
import './Universe.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Top(),
          Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        debugPrint("Universe Nedded");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Universe()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, top: 10, right: 15, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Universe()));
                                    },
                                    child: Text("Planets",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 25,
                                  )
                                ],
                              ))),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint("Universe Nedded");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Universe()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, top: 10, right: 15, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Universe()));
                                    },
                                    child: Text("Zodic Stars",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 25,
                                  )
                                ],
                              ))),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint("Universe Nedded");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Universe()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, top: 10, right: 15, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Universe()));
                                    },
                                    child: Text("Universe Facts",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 25,
                                  )
                                ],
                              ))),
                    ),
                  ],
                ),
              )),
          Center(
            child: ListView.builder(
              controller: ScrollController(),
              itemCount: planets.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(
                                  planet: planets[index],
                                )));
                  },
                  child: MyCard(
                    path: planets[index].iconImage,
                    name: planets[index].name,
                    disc: planets[index].description.substring(0, 110),
                    my_planet: planets[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/universe.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 120.0),
              child: Text("What Didi You Know About The Amazing Universe ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text("About The Amazing Planets?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ]),
        ));
  }
}

class MyCard extends StatefulWidget {
  final String path;
  final String name;
  final String disc;
  final PlanetInfo my_planet;

  const MyCard(
      {Key? key,
      required this.path,
      required this.name,
      required this.disc,
      required this.my_planet})
      : super(key: key);
  @override
  _MyCardState createState() => _MyCardState(path, name, disc, my_planet);
}

class _MyCardState extends State<MyCard> {
  final String path;
  final String name;
  final String disc;
  final PlanetInfo my_planet;

  _MyCardState(this.path, this.name, this.disc, this.my_planet);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 15),
      width: 10,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      image: DecorationImage(image: AssetImage(path)))),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 10, right: 10),
                  child: Center(
                    child: Text(
                      disc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (context, a, b) => Detail(
                                    planet: my_planet,
                                  )));
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                "Explore More",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.orangeAccent),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.orangeAccent,
                              ),
                            )
                          ],
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
