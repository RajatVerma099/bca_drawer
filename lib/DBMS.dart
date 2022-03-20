import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'main.dart';

class dbms extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              color: Colors.blueGrey,
              icon: Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () => Navigator.popAndPushNamed(context, '/')),
          title: Text('DBMS KPH :)'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            child: SfPdfViewer.network(
                'https://drive.google.com/uc?export=view&id=1mm447nq0Y2EXr_pc9uaHyt0ztmK053ka')),
      );
}