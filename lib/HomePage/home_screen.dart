import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/utilities/complete_your_profile.dart';
import 'package:intl/intl.dart';
import 'package:home_page/utilities/catalouge_card.dart';
import 'package:home_page/utilities/meetings_card.dart';
import 'package:home_page/utilities/carousel_component.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      Text(
                        'Good Evening, Andrew',
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(height:10),
                          Text(
                            formattedDate,
                            textAlign: TextAlign.left,
                            
                            
                          ),
                        
                      
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user_image.png'),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height:20),
            
            CarouselDemo(),
             Container(height:10,
                  color: Colors.grey.shade200,),
            
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
                        onPressed: ()=>print('continue learning'),
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
                
                
                  Container(height:10,
                  color: Colors.grey.shade200,),

                  CompleteYourProfile(),

                  Container(height:10,
                  color: Colors.grey.shade200,),
                  
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.purple,
                        ),
                        onPressed: ()=>print('Today\'s meetings'),
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
             Container(height:12,
                  color: Colors.grey.shade200,),
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
                        onPressed: ()=>print('Featured Products'),
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
                  
                  CarouselDemo(),
                  
                  SizedBox(height:10),
                  Container(height:10,
                  color: Colors.grey.shade200,),
                  
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
                  SizedBox(height:10),
                  Container(height:10,
                  color: Colors.grey.shade200,),
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
                        //SizedBox(height: 10),
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
