import 'package:flutter/material.dart';
import 'package:study/about_us.dart';
import 'package:study/data.dart';

import 'main_detail.dart';

class Universe extends StatefulWidget {
  @override
  _UniverseState createState() => _UniverseState();
}

class _UniverseState extends State<Universe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              splashColor: Colors.amberAccent,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              icon: Icon(
                Icons.person,
                color: Colors.teal[400],
              ))
        ],
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(left: 80),
          child: Text(
            "Universe",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: UniverseBody(),
    );
  }
}

class UniverseBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView.builder(
            itemCount: uni_facts.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailUniverse(
                                my_universe: uni_facts[index],
                              )));
                },
                child: UiCard(
                  title: uni_facts[index].title,
                  iconImage: uni_facts[index].iconImage,
                ),
              );
            }));
  }
}

class UiCard extends StatefulWidget {
  final String title;
  final String iconImage;

  const UiCard({Key? key, required this.title, required this.iconImage})
      : super(key: key);

  @override
  _UiCardState createState() => _UiCardState(title, iconImage);
}

class _UiCardState extends State<UiCard> {
  final String title;
  final String iconImage;

  _UiCardState(this.title, this.iconImage);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      margin: EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 25),
      elevation: 16,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: MediaQuery.of(context).size.width * 0.47,
                  child: Image.asset(
                    iconImage,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                right: 5,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.teal[400],
                    )),
              )
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(title,
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w600,
                            fontSize: 18))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                            color: Colors.teal[400],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 45.0, right: 45, top: 10, bottom: 10),
                          child: Text(
                            "Show More",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text("Source: "),
                              Text(
                                "Wikipidia",
                                style: TextStyle(
                                  color: Colors.teal[400],
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          )

          // Container(
          //   color: Colors.red,
          //   child: Text("Explore More"),
          // )
        ],
      ),
    );
  }
}
