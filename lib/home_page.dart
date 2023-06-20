// PAGE 2

import 'package:assignment/details_page.dart';
import 'package:assignment/models/card_model.dart';
import 'package:flutter/material.dart';
import 'data models/menu_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<MenuData> data =[
    MenuData(name: 'Old Book', rate: 10, image: 'assets/image1.png'),
    MenuData(name: 'News paper', rate: 10, image: 'assets/image2.png'),
    MenuData(name: 'Old Iron metal', rate: 10, image: 'assets/image3.png'),
    MenuData(name: 'Cardboard', rate: 10, image: 'assets/image4.png'),
    MenuData(name: 'Old Book', rate: 10, image: 'assets/image1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 46),
            ColoredBox(
              color: const Color(0xffd9d9d9),
              child: ListTile(
                title: const Text(
                  'User name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),
                ),
                leading: CircleAvatar(
                  child: Image.asset('assets/profile.png'),
                ),
                trailing: Image.asset('assets/Notification.png',height: 54,width: 54),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(), // to disable the scrolling feature of listview
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context,index) {
                    return InkWell(
                      onTap: () {
                        // on tap it navigates to page3
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsPage()));
                      },
                      child: CardModel(menuData: data[index]),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
