import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'main.dart';

class nm extends StatelessWidget {
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
          title: Text('Knowledge Management:)'),
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
                      text: 'Unit 4 ', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 4),
                    ),

                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 1 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 2 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 3 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 7),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 4 KPH', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Previous Yr paper', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 9),
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
                      'https://drive.google.com/uc?export=view&id=12rLnn5gCH_RegiYxkDRYXuwZ1yTgKJBF')),
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
                      'https://drive.google.com/uc?export=view&id=13G_QjBIR31HkUch2g2rH9xVLU-txvqRr')),
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
                      'https://drive.google.com/uc?export=view&id=13-FSbyfreopdWO_zYWzl6FsyRs4qTFrc')),
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
                title: Text('UNIT 4 :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1MPyjGypeHQ6NPUGP79U5P8hhWj6ZRQmF')),
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
                title: Text(' UNIT 1 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11bF7qDiVfA4O8DWQDi_My3nndwL03e4W')),
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
                title: Text('UNIT 2 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11fe5S1yBeIQ68KLZlnGDc6Ry9-PVKwT4')),
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
                title: Text('UNIT 3 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11mZ3161uy-1fJSUo5SdboFU_S5_ljI9I')),
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
                title: Text('UNIT 4 kph :)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=11vVShdCjHpNfzuicn6tYf72POqG8p96x')),
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
                title: Text('Previous Yr Papers :)'),

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


    }
  }
}

