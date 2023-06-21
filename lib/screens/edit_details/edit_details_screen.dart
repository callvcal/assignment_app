import 'package:assignment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // user  photo container...
            Padding(
              padding: const EdgeInsets.only(top: 81, left: 75, bottom: 40),
              child: Container(
                width: 227,
                height: 178,
                decoration: BoxDecoration(
                  color: CustomColors.buttonColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'User Photo',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: CustomColors.textColor,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 36, right: 32),
              child: Container(
                height: 57,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Name',
                      contentPadding: const EdgeInsets.all(16),
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        color: CustomColors.textColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),

            // email address
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 32, top: 20),
              child: Container(
                height: 57,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email Address',
                      contentPadding: const EdgeInsets.all(16),
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        color: CustomColors.textColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 36, right: 32, top: 32),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Full Address',
                      contentPadding: const EdgeInsets.all(16),
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15,
                        color: CustomColors.textColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),

            const SizedBox(height: 48),

            Padding(
              padding: const EdgeInsets.only(left: 40, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '984616161815',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: CustomColors.textColor,
                    ),
                  ),
                  Text(
                    'Verified',
                    style: GoogleFonts.inter(
                      color: CustomColors.verifiedColor,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            // divider
            const Padding(
              padding: EdgeInsets.only(left: 39),
              child: Divider(
                endIndent: 240,
                thickness: 1,
                color: CustomColors.textColor,
              ),
            ),

            // Submit button
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 34, top: 50),
              child: Container(
                height: 66,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff6E7CFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Save', style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
