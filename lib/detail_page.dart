import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/data.dart';
// import 'package:url_launcher_platform_interface/link.dart';

class Detail extends StatelessWidget {
  final PlanetInfo planet;

  const Detail({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    image:
                        DecorationImage(image: AssetImage(planet.iconImage))),
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.35,
                        left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          planet.name,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.bold,
                              fontSize: 55),
                        ),
                        Text(
                          "Solar System",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              height: 0.9,
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ))),
            Divider(
              color: Colors.white10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  // color: Colors.white
                  ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 20,
                ),
                child: Text(
                  planet.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.white10,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35),
              width: MediaQuery.of(context).size.width * 0.6,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        //Launch Url Here
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  title: Text(
                                    "Comming Soon",
                                    style: TextStyle(
                                        color: const Color(0xff47455f)),
                                  ),
                                  content: Image.asset(planet.iconImage),
                                  actions: [
                                    FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Okay",
                                        style: TextStyle(
                                            color: const Color(0xff47455f)),
                                      ),
                                    ),
                                    FlatButton(
                                        onPressed: () {
                                          debugPrint(
                                              "dismissed Please Dissmis me");
                                        },
                                        child: Icon(Icons.redeem))
                                  ],
                                ),
                            barrierDismissible: true);
                      },
                      child: Text(
                        "Know More",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white10,
    );
  }
}
