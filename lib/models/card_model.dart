import 'package:assignment/data%20models/menu_data.dart';
import 'package:flutter/material.dart';

class CardModel extends StatefulWidget {
  const CardModel({super.key,required this.menuData});
  final MenuData menuData;

  @override
  State<CardModel> createState() => _CardModelState();
}

class _CardModelState extends State<CardModel> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          elevation: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.menuData.image),  // images of the item
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        widget.menuData.name, // name of the items
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                        ),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17
                            ),
                            children: [
                              const TextSpan(
                                  text: "Rate : ₹",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                              TextSpan(
                                  text: '${widget.menuData.rate}',  // rate of the items
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                              const TextSpan(
                                  text: '/ kg',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                            ]
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
