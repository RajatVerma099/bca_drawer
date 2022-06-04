import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mcq/shanti.dart';
import 'DBMS.dart';
import 'cn.dart';
import 'java.dart';
import 'login_screen.dart';
import 'main_drawer.dart';
import 'nm.dart';


@override
Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
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
        "/2": (context) =>MyHomePage(title: 'Notes App for 6th Sem.'),
      },
      title: 'lost_poet_099_',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('img/infinity.gif', fit: BoxFit.cover),
      splashIconSize: 150,
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.black,
      duration: 2000,

      nextScreen: LoginScreen(),
       ),

    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key); //const
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
late BannerAd _bannerAd;
bool _isAdLoaded= false;
@override
void initState() {
  super.initState();
  _initBannerAd();
}
_initBannerAd()
{
  _bannerAd=BannerAd(
    size: AdSize.banner,
    adUnitId: 'ca-app-pub-3694674512376083/4200526276',
    listener: BannerAdListener(
      onAdLoaded: (ad) {
        setState(() {
          _isAdLoaded = true;
        });
      },
      onAdFailedToLoad: (ad,error){},
    ), request: AdRequest(),
  );
  _bannerAd.load();
}
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("BCA 6th SEM."),
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
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Shanti Question Bank (MCQ)',//nm
                    icon: Icons.spa,
                    onClicked: () => selectedItem(context, 4),
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
     bottomNavigationBar: _isAdLoaded ? Container(
       height: _bannerAd.size.height.toDouble(),
       width: _bannerAd.size.width.toDouble(),
  child: AdWidget(ad: _bannerAd),
     ):SizedBox(),
     drawer : MainDrawer(),

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
        ),
        );
        break;
      case 4:
            Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => shanti(),
        ),


        );

    }
  }
}
