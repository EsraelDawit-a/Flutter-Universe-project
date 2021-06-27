import 'package:flutter/material.dart';
import 'package:study/about_us.dart';
import 'package:study/data.dart';

import 'Universe.dart';
import 'body.dart';

class DetailUniverse extends StatelessWidget {
  final MyUniverse my_universe;

  const DetailUniverse({Key? key, required this.my_universe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/universe2.jpg"),
                  fit: BoxFit.fill)),
          child: Padding(
              padding: EdgeInsets.only(top: 200, left: 7),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.teal[400],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.teal[400], fontWeight: FontWeight.w600),
                  )
                ],
              )),
        ),
        UniverseBody()
      ])),
      floatingActionButton: Builder(builder: (context) {
        return Container(
            margin: EdgeInsets.only(bottom: 280, right: 25),
            child: FloatingActionButton(
                child: Icon(Icons.favorite_sharp, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }));
      }),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Padding(
          padding: const EdgeInsets.only(left: 88.0),
          child: Text(
            "Universe",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
            icon: Icon(Icons.info_outline, color: Colors.lightBlue[600]),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage(
                        my_universe.iconImage,
                      ),
                      fit: BoxFit.fill)),
            ),
            Container(
              margin: EdgeInsets.only(top: 360),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55))),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, bottom: 20),
                      child: Text(
                        my_universe.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w800,
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        my_universe.description,
                        style: TextStyle(
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.lightBlue[500]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                "Know More",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 35,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 325,
                left: 30,
                child: Text(
                  "Solar System",
                  style: TextStyle(
                      color: Colors.lightBlue[500],
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
      ),
    );
  }
}
