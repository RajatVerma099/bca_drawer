import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'main.dart';

class cn extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);
int a=0;
@override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
              color: Colors.blueGrey,
              icon: Icon(Icons.arrow_back, color: Colors.black87),
            //  onPressed: () => Navigator.popAndPushNamed(context, '/')),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
          title: Text('E-Commerce :)'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
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
                      text: 'Unit 1 and 2', //dbms
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 3', //java
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 4 (not available)', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 5 (not available)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 4),
                    ),

                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 1 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 2 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 3 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 7),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 4 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 5 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 9),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Previous Yr paper', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 10),
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
      case 1:
        a = 1;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('1 & 2 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qxef9L9GBFtlbdpQEPmskzMX_Nr6j24J')),
            )
        ),
        );//dbms(),
        break;
      case 2:
        a = 2;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('3 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qpQ_JNY3yRS8ILdj4o96B4sU98SZ8P0V')),
            )
        ),
        );//dbms(),
        break;
      case 3:
        a = 3;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('4 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qz4vArSJIV73rs2Oaou-8Lf9RIEPoRJt')),
            )
        ),
        );//dbms(),
        break;
      case 4:
        a = 4;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('5 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qz4vArSJIV73rs2Oaou-8Lf9RIEPoRJt')),
            )
        ),
        );//dbms(),
        break;
      case 5:
        a = 5;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text(' 1 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qzTyIYHoD9y7tTCFau636PXPwTxE0Dl2')),
            )
        ),
        );//dbms(),
        break;
      case 6:
        a = 6;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('2 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1r4P3VVdicLVNRPVlH__vZOl0a4tiwJuo')),
            )
        ),
        );//dbms(),
        break;
      case 7:
        a = 7;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('3 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=14Ji79-PeRwZIQHzaCDMecJcv9B-7bBop')),
            )
        ),
        );//dbms(),
        break;
      case 8:
        a = 8;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('4 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1r39EG_uJJIfxJxELUGfjYNs8tYmscn-K')),
            )
        ),
        );//dbms(),
        break;
      case 9:
        a = 9;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('5 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=14Rt5FGVDdi-XZHPn-XsL0Bj1M6upIR70')),
            )
        ),
        );//dbms(),
        break;
      case 10:
        a = 10;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold (
              // backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
                title: Text('Previous yr papers :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11uNCjwTM-Qh_KF8XfE3MMeRPn8Lxz3QB')),
            )
        ),
        );//dbms(),
        break;
      // case 11:
      //   a = 11;
      //   Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => Scaffold (
      //         // backgroundColor: Colors.black,
      //         appBar: AppBar(
      //           leading: IconButton(
      //               color: Colors.blueGrey,
      //               icon: Icon(Icons.arrow_back, color: Colors.black87),
      //               //onPressed: () => Navigator.popAndPushNamed(context, '/')),
      //               onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
      //           title: Text(':)'),
      //
      //           centerTitle: true,
      //           backgroundColor: Colors.blueGrey,
      //         ),
      //         body:
      //         Container(
      //             child: SfPdfViewer.network(
      //                 'https://drive.google.com/uc?export=view&id=11D0lpzx4p7BcrGidfxgwK8q-pAWoswnR')),
      //       )
      //   ),
      //   );//dbms(),
      //   break;
      // case 12:
      //   a = 12;
      //   Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => Scaffold (
      //         // backgroundColor: Colors.black,
      //         appBar: AppBar(
      //           leading: IconButton(
      //               color: Colors.blueGrey,
      //               icon: Icon(Icons.arrow_back, color: Colors.black87),
      //               //onPressed: () => Navigator.popAndPushNamed(context, '/')),
      //               onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
      //           title: Text(':)'),
      //
      //           centerTitle: true,
      //           backgroundColor: Colors.blueGrey,
      //         ),
      //         body:
      //         Container(
      //             child: SfPdfViewer.network(
      //                 'https://drive.google.com/uc?export=view&id=11D0lpzx4p7BcrGidfxgwK8q-pAWoswnR')),
      //       )
      //   ),
      //   );//dbms(),

    }
  }
}

  //
  //
  // class ecommunit extends StatelessWidget with cn {
  //   final padding = EdgeInsets.symmetric(horizontal: 60);
  //
  //   @override
  //    Widget build(BuildContext context) {
  //     if (a == 1) {
  //       return Scaffold (
  //        // backgroundColor: Colors.black,
  //         appBar: AppBar(
  //           leading: IconButton(
  //               color: Colors.blueGrey,
  //               icon: Icon(Icons.arrow_back, color: Colors.black87),
  //               //onPressed: () => Navigator.popAndPushNamed(context, '/')),
  //         onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
  //             title: Text(':)'),
  //
  //           centerTitle: true,
  //           backgroundColor: Colors.blueGrey,
  //         ),
  //         body:
  //         Container(
  //             child: SfPdfViewer.network(
  //                 'https://drive.google.com/uc?export=view&id=10urSC4Gz-EOth48tDAu7P9n--3BwHHZ6')),
  //       );
  //
  //     }
  //     if (a == 2) {
  //       return Scaffold (
  //         // backgroundColor: Colors.black,
  //         appBar: AppBar(
  //           leading: IconButton(
  //               color: Colors.blueGrey,
  //               icon: Icon(Icons.arrow_back, color: Colors.black87),
  //               //onPressed: () => Navigator.popAndPushNamed(context, '/')),
  //               onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
  //           title: Text(':)'),
  //
  //           centerTitle: true,
  //           backgroundColor: Colors.blueGrey,
  //         ),
  //         body:
  //         Container(
  //             child: SfPdfViewer.network(
  //                 'https://drive.google.com/uc?export=view&id=11C5Asz8ZZs2B1JzyGSGQUXz5ALx7WQPE')),
  //       );
  //
  //     }
  //     else {
  //       return Scaffold (
  //
  //         appBar: AppBar(
  //           leading: IconButton(
  //               color: Colors.blueGrey,
  //               icon: Icon(Icons.arrow_back, color: Colors.black87),
  //               onPressed: () => Navigator.popAndPushNamed(context, '/')),
  //           title: Text(':)'),
  //           centerTitle: true,
  //           backgroundColor: Colors.blueGrey,
  //         ),
  //         body:
  //         Container(
  //             child: SfPdfViewer.network(
  //                 'https://drive.google.com/uc?export=view&id=1kNrTLxbaOWcnOc_m63L8i23m55Pz7RsG')),
  //       );
  //
  //     }
  //   }
  //
  //
  // }