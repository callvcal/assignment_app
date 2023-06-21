import 'package:assignment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 29),
      child: SizedBox(
        height: 138,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 75,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://helostatus.com/wp-content/uploads/2021/09/2021-profile-WhatsApp-hd.jpg'),
                ),
              ),
            ),
            const SizedBox(width: 14,),
            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sumanya K.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: CustomColors.textColor,
                    ),
                  ),
                  Text(
                    'sumanyak@gmail.com',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: CustomColors.hintTextColor,
                    ),
                  ),
                  Text(
                    '+91 xxxxxxxxxxx',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: CustomColors.hintTextColor,
                    ),
                  ),
                  Text(
                    '#21-22-31, Masab Tank,\nHyderabad.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: CustomColors.hintTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
