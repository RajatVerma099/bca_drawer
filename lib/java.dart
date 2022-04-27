import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'main.dart';

class java extends StatelessWidget {
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
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
          title: Text('System Analysis and Design:)'),
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
                      text: 'Unit 1 ', //dbms
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 2', //java
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 3', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 4 (not available)', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 5 (not available)', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 6 (not available)', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 1 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 7),
                    ),

                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 2 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 3 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 9),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 4 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 10),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 5 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 11),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 6 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 12),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Previous Yr paper', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 13),
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
                title: Text('UNIT 1 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qbsrkDFuxwTx0dqSeBLnq4G0DlU0Ozjy')),
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
                title: Text('UNIT 2 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qhqmievxqzPp_PQy92q0PufL7cVQyhzd')),
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
                title: Text('UNIT 3 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1qhtVFDItpznBQ5Rx5SawzKEM-NrSKoPn')),
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
                title: Text('UNIT 4 (not available) :)'),

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
                title: Text(' UNIT 5 (not available) :)'),

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
                title: Text(' UNIT 5 (not available) :)'),

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
                title: Text('UNIT 1 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=10zQsaDdFbBfh6DbTNsRfc29NQq_Wzfth')),
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
                title: Text('UNIT 2 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=113_49Y7dU-_Jv0ETgT4i_6K83FicqiRH')),
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
                title: Text('UNIT 3 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11A0Fc21MeQRDZtWXOvJmJCI78-8C1KP4')),
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
                title: Text('UNIT 4 kph'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11C5Asz8ZZs2B1JzyGSGQUXz5ALx7WQPE')),
            )
        ),
        );//dbms(),
        break;
    case 11:
      a = 11;
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold (
            // backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                  color: Colors.blueGrey,
                  icon: Icon(Icons.arrow_back, color: Colors.black87),
                  //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
              title: Text('UNIT 5 kph :)'),

              centerTitle: true,
              backgroundColor: Colors.blueGrey,
            ),
            body:
            Container(
                child: SfPdfViewer.network(
                    'https://drive.google.com/uc?export=view&id=1r4xoCbUTN_tYAvGsXw-hqiuTNUGPwc5Z')),
          )
      ),
      );//dbms(),
      break;
    case 12:
      a = 12;
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold (
            // backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                  color: Colors.blueGrey,
                  icon: Icon(Icons.arrow_back, color: Colors.black87),
                  //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
              title: Text('UNIT 6 kph:)'),

              centerTitle: true,
              backgroundColor: Colors.blueGrey,
            ),
            body:
            Container(
                child: SfPdfViewer.network(
                    'https://drive.google.com/uc?export=view&id=11D0lpzx4p7BcrGidfxgwK8q-pAWoswnR')),
                )
      ),
      );

          break;
          case 13:
          a = 12;
          Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold (
            // backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                  color: Colors.blueGrey,
                  icon: Icon(Icons.arrow_back, color: Colors.black87),
                  //onPressed: () => Navigator.popAndPushNamed(context, '/')),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: '')))),
              title: Text('Previous Year Papers:)'),

              centerTitle: true,
              backgroundColor: Colors.blueGrey,
            ),
            body:
            Container(
                child: SfPdfViewer.network(
                    'https://drive.google.com/uc?export=view&id=10urSC4Gz-EOth48tDAu7P9n--3BwHHZ6')),
          )
      ),
      );//dbms(),

    }
  }
}

