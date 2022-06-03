import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//App Images
String appImage = "assets/images/appImage.svg";
String fbSvg = "assets/images/facebook.svg";
String googleSvg = "assets/images/google.svg";
String linklnSvg = "assets/images/linkln.svg";
String accValidSvg = "assets/images/acct_valid.svg";
String successSvg = "assets/images/success.svg";
String noteSvg = "assets/images/notes.svg";
String backGroundJpeg = "assets/images/background.jpeg";

//User Type
String contentOne = "Crop Farmer";
String contentTwo = "Black Solder Fly Farmer";
String contentThree = "Fish/Poultry Farmer";
String contentFour = "Manual Labourers";

//Colors
Color inputWhite = const Color.fromRGBO(252, 252, 252, 1);
Color primaryColor = const Color.fromRGBO(10, 157, 86, 1);
Color hintTextColor = const Color.fromRGBO(151, 151, 151, 1);
Color buttonTextColor = const Color.fromRGBO(255, 255, 255, 1);
Color headerTextColor = const Color.fromRGBO(0, 0, 0, 1);
Color contentOneColor = const Color.fromRGBO(34, 34, 34, 1);
Color contentTwoColor = const Color.fromRGBO(115, 115, 119, 1);
Color contentThreeColor = const Color.fromRGBO(77, 77, 77, 1);
Color dividerColor = const Color.fromRGBO(229, 229, 229, 1);
Color orColor = const Color.fromRGBO(22, 22, 29, 1);
Color userTypeColor = const Color.fromRGBO(136, 255, 222, 1);
Color userTypeTextColor1 = const Color.fromRGBO(128, 128, 128, 1);
Color userTypeTextColor2 = const Color.fromRGBO(64, 64, 64, 1);
Color blend = const Color.fromRGBO(7, 110, 82, 0.8);

//TextStyles
TextStyle headerText = GoogleFonts.jost(
  textStyle: TextStyle(
    color: headerTextColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
);



TextStyle contentText = GoogleFonts.jost(
  textStyle: TextStyle(
    color: contentOneColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);


TextStyle contentTextTwo = GoogleFonts.jost(
  textStyle: TextStyle(
    color: contentThreeColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle linkText = GoogleFonts.jost(
  textStyle: TextStyle(
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle orTextStyle = GoogleFonts.jost(
  textStyle: TextStyle(
    color: orColor,
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

TextStyle forgotPasswordText = GoogleFonts.jost(
  textStyle: TextStyle(
    color: primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle labelTextStyle = GoogleFonts.jost(
  textStyle: TextStyle(
    color: hintTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle buttonTextStyleOne = GoogleFonts.jost(
  textStyle: TextStyle(
    color: buttonTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle buttonTextStyleTwo = GoogleFonts.jost(
  textStyle: TextStyle(
    color: buttonTextColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
);
TextStyle haveAccTextStyle() {
  return TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: headerTextColor,
  );
}

//Button Styles
ButtonStyle elevatedButtonStyleOne = ElevatedButton.styleFrom(
  primary: primaryColor,
  textStyle: buttonTextStyleTwo,
);

ButtonStyle elevatedButtonStyleTwo = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  minimumSize: Size.infinite,
  primary: primaryColor,
  textStyle: buttonTextStyleTwo,
);

// Container Styles
socialLoginContainer({required Widget child, Color? color}) {
  return Container(
    color: color,
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
    ),
    child: child,
  );
}
