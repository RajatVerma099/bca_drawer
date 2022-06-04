import 'package:flutter/material.dart';
class UserPage extends StatelessWidget {
  final String name;
  const UserPage({
    Key? key,
    required this.name,
    String assetImage = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('About App Developer'),
          centerTitle: true,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('assets/rvrox.jpeg'),
                    ),
                    Text(
                      'Rajat Verma',
                      style: TextStyle(
                        fontFamily: 'DanceScript',
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                      width: 150.0,
                      child: Divider(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      ' life is a virtual mess we weave ',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                      height: 30,
                    ),
                    Card(
                        //padding: EdgeInsets.all(10.0),
                        color: Colors.white54,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.mail,
                            color: Colors.blueGrey,
                          ),
                          title: Text(
                            '   lostpoet099@gmail.com',
                          ),
                        )),
                    Card(
                        color: Colors.white54,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                            leading: Icon(
                              Icons.phone,
                              color: Colors.blueGrey,
                            ),
                            title: Text(
                              '   +1800 180 000 xyz 0',
                            ))),
                    SizedBox(
                      width: 30,
                      height: 50,
                    ),
                    Text(
                      '          I HOPE THIS APP WILL \n HELP YOU WITH YOUR STUDIES.  ',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 20.0,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 50,
                    ),
                    Image.asset(
                      'assets/down.gif',
                      width: 150,
                      height: 110,
                    ),
                    SizedBox(
                      width: 30,
                      height: 50,
                    ),
                    Card(
                        color: Colors.white54,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: ListTile(
                            leading: Icon(
                              Icons.add_reaction,
                              color: Colors.blueGrey,
                            ),
                            title: Text(
                              ' Kind Hooomans Who Helped Me',
                            ))),
                    SizedBox(
                      width: 30,
                      height: 80,
                    ),
                    Text(
                      ' Pulkit Shukla ',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      '( resource accumulator)',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 40,
                    ),
                    Text(
                      ' Zoya Afreen and Rahul Gupta',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'and V.S.I.C.S. 6th sem\'s teachers',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '( for the content that is present it this app.)',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      width: 30,
                      height: 40,
                    ),
                    Text(
                      'Dayalu Bhai',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 00,
                    ),
                    Text(
                      '(constant motivator)',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ig: the_aalu',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 40,
                    ),
                    Text(
                      'Anshu Sir',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 00,
                    ),
                    Text(
                      '( for rectifications)',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/down.gif',
                      width: 150,
                      height: 110,
                    ),
                    Card(
                        color: Colors.white54,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: ListTile(
                            leading: Icon(
                              Icons.add_reaction,
                              color: Colors.blueGrey,
                            ),
                            title: Text(
                              ' My Insta Handle',
                            ))),
                    SizedBox(
                      width: 30,
                      height: 100,
                    ),
                    Text(
                      'ig : @lost_poet_099_',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 25.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 300,
                    ),
                    Text(
                      'that\'s it \n byyeee!!',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 25.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 60,
                    ),
                    SizedBox(
                      width: 30,
                      height: 700,
                    ),
                    Text(
                      'stop scrolling  !!!',
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 15.0,
                        color: Colors.white54,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ),
      );
}
