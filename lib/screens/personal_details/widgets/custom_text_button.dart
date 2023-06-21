import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 17,
          color: CustomColors.textColor,
        ),
      ),
    );
  }
}
