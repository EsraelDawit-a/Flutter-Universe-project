import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.pinkAccent,
        ),
        actions: [
          InkWell(
              onTap: () {
                showAboutDialog(
                    context: context,
                    applicationVersion: '1.0.0',
                    applicationLegalese: "Stare At Planets",
                    applicationName: "Planets",
                    applicationIcon: Icon(Icons.theater_comedy));
              },
              child: Image.asset("assets/images/menu_icon.png"))
        ],
      ),
      body: AboutBody(),
    );
  }
}

class AboutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("assets/images/andromeda.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                Text(
                  "Services",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            color: Colors.greenAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Icon(Icons.web), Text("Web Development")],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            color: Colors.greenAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.phone),
                            Text(
                              "Mobile App Development",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            color: Colors.greenAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star),
                            Text(
                              "Tellegram bot Development",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 15),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            color: Colors.greenAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.facebook_rounded),
                            Text("facebook")
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            color: Colors.greenAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Icon(Icons.business), Text("Tellegram")],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            color: Colors.greenAccent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.airline_seat_flat),
                            Text("Github")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 15),
                  child: Text(
                    "Phone Numbers",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("+251 9820293 77",
                          style: TextStyle(color: Colors.white)),
                      Text("+251 945224486",
                          style: TextStyle(color: Colors.white)),
                      Text("+251 954948454",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("+251 989472386",
                          style: TextStyle(color: Colors.white)),
                      Text("+251 924325817",
                          style: TextStyle(color: Colors.white)),
                      Text("+251 954948454",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.white,
                ),
                Text("Powered By AndroMeda Technologies 2021",
                    style: TextStyle(color: Colors.white)),
                Divider(
                  height: 10,
                  color: const Color(0xff47455f),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
