import 'package:flutter/material.dart';
import 'UserPage.dart';

class MainDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final assetImage = 'images/rvrox.jpg';
    return Drawer(
      child: Material(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            buildHeader(
              assetImage: "assets/rvrox.jpeg",
              name: 'Rajat Verma',
              email: 'lostpoet099@gmail.com',
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: 'Rajat Verma',
                ),

              )),
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
        child: Column(
          children: [
            Container(
              padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' First of all a big big biggg "thanks" to you for installing "B.C.A. VI Sem." The response I got from you guys was truly amazing and due to your support and encouragement, I was able to work on it continuously. \n App. is not malicious and your credentials are totally secure and none of the data would be misused.\n You can send your feedback by sending me a mail at lostpoet099@gmail.com \n Any constructive criticism would be helpful. \n\n  If the app was of any help to you then please share it with your batchmates. \n Earnings from this app will be donated to beggars...so plz share it.\n\n Once again - Thank You!  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n You are the best :) \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Now stop scrolling!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n And I\'ll mail you the mcq kph so please use a valid email id to sign up.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n itna neeche jake kya saabit krna chahte ho ?\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n aur kitna giroge bachha🦍🦍🦍🦍🦍🦍\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nachha ye gana try krna \n Apocalypse Slowed \n -by 6ixes, Dybbukk \n credits to Prakhar Shukla \n(ab chale jao)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n isse neeche scroll krke dikhao \n byeee\n 😝😂',
                style: TextStyle(
                  //fontFamily: 'Pacifico',
                  fontSize: 17.0,
                  color: Colors.white54,
                  //  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],

        ),
      );



    }

