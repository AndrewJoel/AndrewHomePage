import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1618318786162-54793c10908f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1618320804686-2a5f0a5595d1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1532763303805-529d595877c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1487252015168-776961549aca?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=728&q=80',
    'https://images.unsplash.com/photo-1516977103673-45be7d2850d6?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY1fDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];
  Function _onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      reason = CarouselPageChangedReason.manual;
      _current = index;
    });
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          carouselSlider = CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              initialPage: 0,
              viewportFraction: 1,
              enlargeCenterPage: true,
              //autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              //autoPlayInterval: Duration(seconds: 2),
              //autoPlayAnimationDuration: Duration(milliseconds: 2000),
              //pauseAutoPlayOnTouch: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
            ),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  
                    
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                                                      child: 
                                                      Image.network(
                              imgUrl,
                              width: MediaQuery.of(context).size.width,
                              
                              fit: BoxFit.fill,
                            ),
                          
                            
                         ),
                          Container(
    
                            color: Colors.grey.shade100,
                            width: MediaQuery.of(context).size.width,
                          
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            
                              children: [
                                SizedBox(height:7),
                                Text('Loreum Ipsum Dolor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('subtext for the above description'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 7.0,
                height: 7.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? Colors.blue : Colors.grey,
                ),
              );
            }),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
