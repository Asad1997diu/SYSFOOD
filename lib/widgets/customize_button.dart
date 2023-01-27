import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizeButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  const CustomizeButton({Key? key, this.buttonText, this.buttonColor, this.textColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide.none)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF14B4FF),
                )),
            onPressed: onPressed,
            child: Center(
              child: Text(buttonText!, style: GoogleFonts.nunito(textStyle:
              TextStyle(color: textColor, fontSize: 15,),fontWeight: FontWeight.bold),),
            )
        ),
      ),
    );
  }
}
