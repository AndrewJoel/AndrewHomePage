import 'package:flutter/material.dart';

class MeetingsCard extends StatelessWidget {
  final Function functionHandler;
  final String text;
  final IconData leadIcon;
  final IconData trailIcon;
  MeetingsCard(
      {@required this.functionHandler,
      @required this.text,
      @required this.leadIcon,@required this.trailIcon});

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
            color: Colors.red,
          ),
          
          title: Column(
            children: [
              Row(
                children: [
                  Text(text,
                      style: TextStyle(fontSize: 14.0, color: Colors.black,fontWeight:FontWeight.w600)),
                ],
              ),
              Row(
                children: [
                  Text('6:00 PM to 7:00 PM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                ],
              ),
            ],
          ),
          trailing: Icon(
            trailIcon,
            
          ),
        ),
      ),
    );
  }
}
