import 'package:assignment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabButtons extends StatelessWidget {
  final String text;

  const CustomTabButtons({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 13),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.textColor,
                ),
              ),
            ),
            // Icon
            const Padding(
              padding: EdgeInsets.only(right: 27, top: 15),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: CustomColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
