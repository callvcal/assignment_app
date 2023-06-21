import 'package:assignment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.buttonColor,
      ),
      child: Center(child: Text(text, style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 8,
        color: CustomColors.textColor,
      ),),),
    );
  }
}
