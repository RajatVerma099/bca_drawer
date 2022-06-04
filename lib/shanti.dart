import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'main.dart';
class shanti extends StatelessWidget {
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
          title: Text('Shanti M.C.Q.:)'),
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
                      text: 'Comp. Network Security MCQ (with answers)', //dbms
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'System Analysis and Design MCQ (with answers)', //java
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'E-Commerce MCQ (with answers)', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Knowledge Management MCQ (with answers)', //cn
                      icon: Icons.spa,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    const SizedBox(height: 16),
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
                title: Text('CNS MCQ (Shanti)'),
                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1Bi8j_PyxCh7fr-ZGDzyb-VaJfRjbw2Hs')),
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
                title: Text('SAD MCQ (Shanti)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1Bb3KyoErZVSOUk9YBvZrlprJGdqBXNGF')),
            )
        ),
        );
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
                title: Text('E-Comm. MCQ (Shanti)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1B_joBukv18ltuxp8iOcr6YmnYuKVDjTW')),
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
                title: Text('KM MCQ (Shanti)'),

                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),
              body:
              Container(
                  child: SfPdfViewer.network(
                      'https://drive.google.com/uc?export=view&id=1BaBmzgJ23cgUXb65RrPK0PV3SfyI1b2B')),
            )
        ),
        );//dbms(),
        break;

    }
  }
}

