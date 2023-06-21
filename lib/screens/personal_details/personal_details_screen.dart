import 'package:assignment/screens/personal_details/widgets/custom_tab_buttons.dart';
import 'package:assignment/screens/personal_details/widgets/custom_text_button.dart';
import 'package:assignment/screens/personal_details/widgets/information_card.dart';
import 'package:assignment/utils/colors.dart';
import 'package:assignment/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../edit_details/edit_details_screen.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Personal Details and edit Text in Row...
            Padding(
              padding:
                  const EdgeInsets.only(left: 29, right: 55, top: 59, bottom: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Details',
                    style: GoogleFonts.poppins(
                      color: CustomColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    // Will navigate to edit Details Screen....
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditDetailsScreen(),
                        )),
                    child: Text(
                      'Edit',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Information Card...
            const InformationCard(),

            const SizedBox(
              height: 87,
            ),

            const Padding(
              padding: EdgeInsets.only(left: 25, right: 44),
              child: Column(
                children: [
                  CustomTabButtons(text: 'Your Orders'),
                  CustomTabButtons(text: 'Feedback'),
                  CustomTabButtons(text: 'About us'),
                  CustomTabButtons(text: 'Help'),
                ],
              ),
            ),

            const SizedBox(height: 27),

            //other text buttons...
            const Padding(
              padding: EdgeInsets.only(left: 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextButton(text: 'Send Feedback'),
                  CustomTextButton(text: 'Report an Emergency'),
                  CustomTextButton(text: 'Rate us on the Play Store'),
                  CustomTextButton(text: 'Log out'),
                ],
              ),
            ),

            Padding(padding: const EdgeInsets.only(left: 43),child: Button(text: 'Asdmin',)),

          ],
        ),
      ),
    );
  }
}
