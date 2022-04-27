import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'main.dart';

class cn extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);
int a=0;
@override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          leading: IconButton(
              color: Colors.blueGrey,
              icon: Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () => Navigator.popAndPushNamed(context, '/')),
          title: Text('E-Commerce :)'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
//         body: Container(
//             child: SfPdfViewer.network(
//                 'https://drive.google.com/uc?export=view&id=1NbLf-3dR-4l118fbJmdsYg8UFSpGJraO')),
//       );
// }
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
                      text: 'Unit 4', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 5', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 6', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 1 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 7),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 2 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 3 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 9),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 4 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 10),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 5 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 11),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Unit 1 (EC KPH)', //nm
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 12),
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
          builder: (context) => ecommunit(), //dbms(),
        ));
        break;
      case 2:
      a = 2;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ecommunit(), //dbms(),
          ),
        );
        break;
      case 3:
  a = 3;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ecommunit(), //dbms(),
          ),
        );
        break;
      case 4:
     a = 4;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 5:
      a = 5;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 6:
    a = 6;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 7:
    a = 7;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 8:
     a = 8;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 9:
    a = 9;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 10:
     a = 10;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 11:
    a = 11;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));break;
      case 12:
     a = 12;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ecommunit(), //dbms(),
        ));
    }
  }
}



  class ecommunit extends StatelessWidget with cn {
    final padding = EdgeInsets.symmetric(horizontal: 60);

    @override
     Widget build(BuildContext context) {
      if (a == 1) {
        return Scaffold (

          appBar: AppBar(
            leading: IconButton(
                color: Colors.blueGrey,
                icon: Icon(Icons.arrow_back, color: Colors.black87),
                onPressed: () => Navigator.popAndPushNamed(context, '/')),
            title: Text(':)'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body:
          Container(
              child: SfPdfViewer.network(
                  'https://drive.google.com/uc?export=view&id=1NCDuMjxXG7nW0rmRF-KUjo4L88fmgiww')),
        );

      }
      else {
        return Scaffold (

          appBar: AppBar(
            leading: IconButton(
                color: Colors.blueGrey,
                icon: Icon(Icons.arrow_back, color: Colors.black87),
                onPressed: () => Navigator.popAndPushNamed(context, '/')),
            title: Text(':)'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body:
          Container(
              child: SfPdfViewer.network(
                  'https://drive.google.com/uc?export=view&id=1NCDuMjxXG7nW0rmRF-KUjo4L88fmgiww')),
        );

      }
    }


  }