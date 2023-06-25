import 'package:flutter/material.dart';
class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              shape: RoundedRectangleBorder( //<-- SEE HERE
                side: BorderSide(
                  color: Colors.deepPurple,
                  width: 3
                ),
                  borderRadius: BorderRadius.circular(5.0),
              ),
              child: Image.asset('assets/images/books.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 18.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 12.0
                  ), //BoxShadow//BoxShadow
                ],
              ),
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    Row(children: [
                      Text('Old Book'),
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text('Rate : ₹ 10/ kg'),
                    ],),

                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.white)
              ]
            ),
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        Text('Customer Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Row(
                      children: [
                        Text('Name -',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:14.0),
                    child: Row(
                      children: [
                        Text('Mb - 8251890321',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Row(
                      children: [
                        Text('Address - ',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 80.0,
            width: 180.0,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.red[500],
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: new Text("Call",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center,),
                )),
          ),
          SizedBox(height: 40,),
          Container(
            height: 80.0,
            width: 300.0,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: new Text("Complete",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center,),
                )),
          ),
        ],
      ),
    );
  }
}
