import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteYourProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      ' Complete Your Profile ',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 13,
                    width: 85,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 13,
                    width: 85,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 13,
                    width: 85,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 13,
                    width: 85,
                    color: Colors.grey.shade400,
                  ),
                ],
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  margin: EdgeInsets.only(top: 2, left: 8),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.done_rounded,
                        color: Colors.green,
                      ),
                      FlatButton(
                          onPressed: () => print('name'),
                          child: Text(
                            'Add Name',
                            style: TextStyle(color: Colors.green),
                          ),
                          textColor: Colors.green),
                      SizedBox(width: 45),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  margin: EdgeInsets.only(
                    top: 2,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.library_add,
                        color: Colors.blue,
                      ),
                      FlatButton(
                          onPressed: () => print('email'),
                          child: Text(
                            'Add Email',
                          ),
                          textColor: Colors.blue),
                      SizedBox(width: 45),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 17),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  margin: EdgeInsets.only(top: 2, left: 8),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.library_add,
                        color: Colors.blue,
                      ),
                      FlatButton(
                          onPressed: () => print('Nios'),
                          child: Text(
                            'Add NIOS',
                            style: TextStyle(color: Colors.blue),
                          ),
                          textColor: Colors.blue),
                      SizedBox(width: 50),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  margin: EdgeInsets.only(
                    top: 2, /*left: 8*/
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.library_add,
                        color: Colors.blue,
                      ),
                      FlatButton(
                          onPressed: () => print('Date Of Birth'),
                          child: Text(
                            'Add Info',
                          ),
                          textColor: Colors.blue),
                      SizedBox(width: 55),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
