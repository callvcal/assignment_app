import 'package:flutter/material.dart';import 'package:getwidget/getwidget.dart';

class Page_6 extends StatefulWidget {
  const Page_6({Key? key}) : super(key: key);

  @override
  State<Page_6> createState() => _Page_6State();
}

class _Page_6State extends State<Page_6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
            children: [
              Container(
                color: Colors.grey,
                margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: [
                    Text('Admin Name', style: TextStyle(fontSize: 25),),
                    SizedBox(width: 140,),
                    GFButton(
                      onPressed: () {},
                      text: "Your item",
                      color: Colors.red,
                      shape: GFButtonShape.square,
                      size: GFSize.SMALL,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 290),
                child: Row(
                  children: [
                    Text(
                      'completed', style: TextStyle(color: Colors.deepOrange),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    Text(
                      "New request received", style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Card(
                color: Colors.grey[20],
                child: Column(
                  children: [
                    Row(children: [
                      Text('Old Book')
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text('Mohan jha'),
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text('10 : 30 AM 20/06/2023'),
                    ],)
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}