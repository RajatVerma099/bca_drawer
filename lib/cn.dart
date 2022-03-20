import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'main.dart';

class cn extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              color: Colors.blueGrey,
              icon: Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () => Navigator.popAndPushNamed(context, '/')),
          title: Text('CN KPH :)'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            child: SfPdfViewer.network(
                'https://drive.google.com/uc?export=view&id=1nAprxnLSa3WslP4eqgmd3Vb7lkQa6tlN')),
      );
}