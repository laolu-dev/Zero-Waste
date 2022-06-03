import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String contentOne = "Crop Farmer";
String contentTwo = "Black Solder Fly Farmer";
String contentThree = "Fish/Poultry Farmer";
String contentFour = "Manual Labourers";
//App Images
String appImage = "assets/images/appImage.svg";
String fbSvg = "assets/images/facebook.svg";
String googleSvg = "assets/images/google.svg";
String linklnSvg = "assets/images/linkln.svg";
String accValidSvg = "assets/images/acct_valid.svg";
String noteSvg = "assets/images/notes.svg";
String backGroundJpeg = "assets/images/background.jpeg";

const inputWhite = Color.fromRGBO(252, 252, 252, 1);
const hintColor = Color.fromRGBO(151, 151, 151, 1);
const inputBorderColor = Color.fromRGBO(226, 226, 226, 1);

Color colorGreen = const Color.fromRGBO(10, 157, 86, 1);
Color lineColor = const Color.fromRGBO(229, 229, 229, 1);
Color lightGreen = const Color.fromRGBO(136, 255, 222, 1);
Color wauhBoxtxtColor = const Color.fromRGBO(128, 128, 128, 1);
Color verTxtColor = const Color.fromRGBO(115, 115, 119, 1);

TextStyle textStyleOne = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle textStyleTwo = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 34, 34, 1),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle textStyleThree = GoogleFonts.jost(
  textStyle: TextStyle(
    color: colorGreen,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle textStyleFour = GoogleFonts.jost(
  textStyle: TextStyle(
    color: colorGreen,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);
TextStyle textStyleFive = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: Color.fromRGBO(22, 22, 29, 1),
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
);
TextStyle userTypeStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: Color.fromRGBO(22, 22, 29, 1),
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle userTextStyleOne = GoogleFonts.jost(
  textStyle: TextStyle(
    color: colorGreen,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);
TextStyle labelTextStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: hintColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle buttonTextStyleOne = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: inputWhite,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle buttonTextStyleTwo = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: inputBorderColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
);

ButtonStyle elevatedButtonStyleOne = ElevatedButton.styleFrom(
  primary: colorGreen,
  textStyle: buttonTextStyleTwo,
);

ButtonStyle elevatedButtonStyleTwo = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  minimumSize: Size.infinite,
  primary: colorGreen,
  textStyle: buttonTextStyleTwo,
);

TextStyle socntwkStyle() {
  return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(77, 77, 77, 1));
}

TextStyle btntxtStyle() {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}

TextStyle havAcc() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}

TextStyle orStyle() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(22, 22, 29, 1),
  );
}

TextStyle verTxtStyle() {
  return TextStyle(
      color: verTxtColor, fontSize: 16, fontWeight: FontWeight.w400);
}

TextStyle codeTextStyle = GoogleFonts.jost(
  textStyle: const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
);

codeTextBox({required Widget child}) {
  return SizedBox(
    width: 64,
    height: 64,
    child: child,
  );
}

inputCodeSqr() {
  return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          focusColor: colorGreen,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: hintColor))),
      keyboardType: TextInputType.number,
      style: codeTextStyle,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ]);
}

// codeInputStyle() {
//   return const InputDecoration(border: InputBorder.none);
// }

Padding boxText(text) {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Text(
      text,
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: wauhBoxtxtColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

Container inputContainer(
    {required Widget child, Color? color, required Color borderColor}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
        border: Border.all(color: borderColor)),
    constraints: const BoxConstraints(
      maxWidth: 400,
      maxHeight: 52,
    ),
    child: child,
  );
}

InputDecoration inputDecoration({required String labelText}) {
  return InputDecoration(
    labelStyle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: hintColor),
    labelText: labelText,
    contentPadding: const EdgeInsets.only(left: 22, top: 5),
    border: InputBorder.none,
  );
}

circleContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    width: 55,
    height: 55,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
    child: child,
  );
}

Container wauhContainer({
  required Color bgColor,
  required Color bdColor,
  required Widget child,
}) {
  return Container(
    width: 153,
    height: 103,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: bdColor),
      color: bgColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
    ),
    child: child,
  );
}
