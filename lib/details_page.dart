// PAGE 3

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,size: 30),
          color: Colors.black,
          onPressed: () {
            // on tap it navigates back to page2
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 30.0),
        child: Column(
          children: [
            // Input Field
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black,style: BorderStyle.solid),
              ),
              child: TextFormField(
                minLines: 1,
                maxLines: 10,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration.collapsed(hintText: 'Please write details of material and Amount'),
              ),
            ),
            const SizedBox(height: 40),
            // Send Request Button
            ElevatedButton(
                onPressed: () {
                  // on tap it navigates back to page2
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6e7cff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Color(0xff6e7cff))
                  ),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                  'Send Request',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
