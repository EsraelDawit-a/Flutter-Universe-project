import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study/about_us.dart';
import './body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.teal[50],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/images/andromeda.png",
                  ),
                  fit: BoxFit.fill,
                )),
                accountName: Text("Esrael Dawit",
                    style: TextStyle(
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w600)),
                accountEmail: Text("Esraedawit0@gmail.com",
                    style: TextStyle(
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.deepPurple[900],
                ),
                title: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                  child: Text(
                    "Contact us",
                    style: TextStyle(
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.deepPurple[900]),
                  title: Text(
                    "About",
                    style: TextStyle(
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Divider(
                height: 15,
              ),
              ListTile(
                leading: Icon(Icons.share, color: Colors.deepPurple[900]),
                title: Text(
                  "Share",
                  style: TextStyle(
                      color: const Color(0xff47455f),
                      fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Icon(Icons.support, color: Colors.deepPurple[900]),
                title: Text(
                  "Support Us",
                  style: TextStyle(
                      color: const Color(0xff47455f),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Divider(
                height: 15,
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.info, color: Colors.deepPurple[900]),
                  title: Text(
                    "Version",
                    style: TextStyle(
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "1.0.0",
                    style: TextStyle(color: Colors.deepPurple[900]),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    showAboutDialog(
                        context: context,
                        applicationVersion: '1.0.0',
                        applicationLegalese: "Stare At Planets",
                        applicationName: "Planets",
                        applicationIcon: Icon(Icons.theater_comedy));
                  },
                  child: ListTile(
                    hoverColor: Colors.orangeAccent,
                    leading: Icon(
                      Icons.more_rounded,
                      color: const Color(0xff47455f),
                    ),
                    title: Text(
                      "More info",
                      style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(Icons.arrow_forward,
                        color: Colors.deepPurple[900]),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: ListTile(
                    hoverColor: Colors.orangeAccent,
                    leading: Icon(
                      Icons.exit_to_app,
                      color: const Color(0xff47455f),
                    ),
                    title: Text(
                      "Exit",
                      style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Powered By Andro-Meda Tecchnologies",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      Icon(
                        Icons.group,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pinkAccent[100], size: 55),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Image.asset("assets/images/menu_icon.png"))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: StartBody());
  }
}

class StartBody extends StatefulWidget {
  @override
  _StartBodyState createState() => _StartBodyState();
}

class _StartBodyState extends State<StartBody> {
  Future myfuture() async {
    await new Future.delayed(new Duration(seconds: 5));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  void initState() {
    super.initState();
    myfuture();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/gif2.gif"),
                  fit: BoxFit.fill)),
          child: Column(children: [
            Padding(
                padding: EdgeInsets.only(top: 105),
                child: Text("Big Bang", style: TextStyle(color: Colors.white))),
            Padding(
                padding: EdgeInsets.only(top: 300),
                child: Text("Big Bang", style: TextStyle(color: Colors.white))),
            Padding(
                padding: EdgeInsets.only(top: 105),
                child:
                    CircularProgressIndicator(color: Colors.deepOrangeAccent))
          ]),
        ),
      ],
    );
  }
}
