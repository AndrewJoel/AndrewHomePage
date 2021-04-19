import 'package:flutter/material.dart';

class CompleteProfileCard extends StatelessWidget {
  final Function functionHandler;
  final String text;
  final IconData leadIcon;
  CompleteProfileCard(
      {@required this.functionHandler,
      @required this.text,
      @required this.leadIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functionHandler,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0.2),
         child: ListTile(
        
          leading: Icon(
            leadIcon,
            color: Colors.blue,
          ),
          
          title: Column(
            children: [
              Row(
                children: [
                  Text(text,
                      style: TextStyle(fontSize: 14.0, color: Colors.black,fontWeight:FontWeight.w600)),
                ],
              ),
              
            ],
          ),
          
        ),
      ),
    );
  }
}