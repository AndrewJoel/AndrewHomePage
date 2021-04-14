import 'package:flutter/material.dart';

class CatalougeCard extends StatelessWidget {
  final Function functionHandler;
  final String text;
  final IconData icon;
  final String imagePath;
  CatalougeCard(
      {@required this.functionHandler,
      @required this.text,
      @required this.icon,@required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functionHandler,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0.2),
         child: ListTile(
        
          leading: Image(
            image: AssetImage(imagePath),
            
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
                        Icon(
                          Icons.book,
                          size: 10.0,
                        ),
                        SizedBox(width:10.0),
                        Text('Chemistry',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                        SizedBox(width:40.0),
                         Icon(
                          Icons.note,
                          size: 10.0,
                        ),
                        SizedBox(width:10.0),
                        Text('20 chapters',style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w500),),

                      ],
                    )
                
              
            ],
          ),
          trailing: Icon(
            icon,
            color: Colors.blue,
            
          ),
        ),
      ),
    );
  }
}
