import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:home_page/models/card_model.dart';
import 'package:home_page/utilities/catalouge_card.dart';
import 'package:home_page/utilities/meetings_card.dart';
import 'package:home_page/utilities/item1.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List cardList=[
    Item1(),
    Item1(),
    Item1(),
    Item1()
  ];
List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
}
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd-MM, kk:mm').format(now);
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(physics: ClampingScrollPhysics(), children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'Good Evening, Andrew',
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        formattedDate,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/user_image.png'),
                  ),
                  // Container(
                  //   height: 79,
                  //   width: 79,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(70),
                  //     image: DecorationImage(
                  //       image: AssetImage('assets/images/user_image.png'),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 199,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 199,
                    width: 344,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Text(
                        'Container ' + index.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(cards[index].cardBackground),
                        image: new DecorationImage(
                            image: AssetImage(cards[index].cardType))),
                  );
                },
              ),
            ),
            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: map<Widget>(cardList, (index, url) {
    return Container(
      width: 10.0,
      height: 10.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueAccent,
       ),
     );
   }),
 ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        'Continue Learning',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  CatalougeCard(
                      functionHandler: () => {print('card pressed')},
                      text: 'Equations and Stoichiometry',
                      icon: Icons.east,
                      imagePath: 'assets/images/mastercard_logo.png'),
                  CatalougeCard(
                      functionHandler: () => {print('card pressed')},
                      text: 'Diversity in Living Orgainsms',
                      icon: Icons.east,
                      imagePath: 'assets/images/handshake.ico'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.purple,
                        ),
                      ),
                      Text(
                        'Today\'s Meetings',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  MeetingsCard(
                      functionHandler: () => {print('card pressed')},
                      text: 'Chemistry Revision',
                      leadIcon: Icons.science,
                      trailIcon: Icons.info),
                  MeetingsCard(
                      functionHandler: () => {print('card pressed')},
                      text: 'Chemistry Revision',
                      leadIcon: Icons.biotech,
                      trailIcon: Icons.info),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.local_police,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        'Featured Products',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 199,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16, right: 6),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 199,
                          width: 344,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Color(cards2[index].cardBackground),
                              image: new DecorationImage(
                                  image: AssetImage(cards2[index].cardType))),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'From the Wall',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 120),
                            TextButton(
                              onPressed: () => print('button pressed'),
                              child: Text('View More'),
                              style: TextButton.styleFrom(primary: Colors.blue),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "'Ecucation is the passport to future, for tomorrow belongs to those who prepare for it today.'",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Share With Your Friends',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      
          
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Share this app with your friends and Earn Rewards!",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            RaisedButton.icon(
                              onPressed: () {
                                print('Button Clicked.');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              label: Text(
                                'Share',
                                style: TextStyle(color: Colors.white),
                              ),
                              icon: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              textColor: Colors.white,
              
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
