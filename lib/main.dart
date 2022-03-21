//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'DBMS.dart';
import 'cn.dart';
import 'java.dart';
import 'login_screen.dart';
import 'nm.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        //"/": (context) => MyApp(),
        "nm": (context) => nm(),
        //  "/sem1": (context) => Semester_1(),
      },
      title: 'lost_poet_099_',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('img/infinity.gif', fit: BoxFit.fitWidth),
      backgroundColor: Colors.black,
      duration: 2000,

      nextScreen: LoginScreen()
          //MyHomePage(title: 'Notes App for 6th Sem.'

      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  //  debugShowCheckedModeBanner:    false;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Divider(color: Colors.black),
                  const SizedBox(height: 30),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Computer Network Security ',//dbms
                    icon: Icons.spa,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'System Analysis and Design',//java
                    icon: Icons.spa,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'E-Commerce',//cn
                    icon: Icons.spa,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Knowledge Management',//nm
                    icon: Icons.spa,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  Image.asset(
                    "img/bg2.gif",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String email,
    required VoidCallback onClicked,
    required String assetImage,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(assetImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => dbms(),
        ));
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => java(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => cn(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => nm(),
        ));
    }
  }
}
