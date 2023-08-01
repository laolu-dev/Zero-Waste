import 'package:flutter/material.dart';

class AppColors {
  final Map<int, Color> _primarySwatch = {
    50: const Color.fromRGBO(10, 157, 86, 0.1),
    100: const Color.fromRGBO(10, 157, 86, 0.2),
    200: const Color.fromRGBO(10, 157, 86, 0.3),
    300: const Color.fromRGBO(10, 157, 86, 0.4),
    400: const Color.fromRGBO(10, 157, 86, 0.5),
    500: const Color.fromRGBO(10, 157, 86, 0.6),
    600: const Color.fromRGBO(10, 157, 86, 0.7),
    700: const Color.fromRGBO(10, 157, 86, 0.8),
    800: const Color.fromRGBO(10, 157, 86, 0.9),
    900: const Color.fromRGBO(10, 157, 86, 1.0),
  };

  MaterialColor get appColor => MaterialColor(0xFF0A9D56, _primarySwatch);

  Color get primary => const Color(0xFF0A9D56); //RGB(10, 157, 86, 1)

  Color get black => const Color(0xFF000000); //RGB(0, 0, 0, 1)

  Color get white => const Color(0xFFFFFFFF); //RGB(255, 255, 255, 1)

  Color get subTitle => const Color(0xFF222222); //RGB(34, 34, 34, 1)

  Color get hintText => const Color(0xFF979797); //RGB(151, 151, 151, 1)

  Color get hintText2 => const Color.fromRGBO(72, 72, 72, 1);

  Color get dividerColor => const Color.fromRGBO(229, 229, 229, 1);

  Color get beforeType => const Color(0xFF404040); //RGB(64, 64, 64, 1)

  Color get logIn => const Color(0xFF4D4D4D); //RGB(77, 77, 77, 1)

  Color get inputWhite => const Color.fromRGBO(252, 252, 252, 1);

  Color get orColor => const Color.fromRGBO(22, 22, 29, 1);

  Color get borderTile => const Color.fromRGBO(226, 226, 226, 1);

  Color get blend => const Color.fromRGBO(7, 110, 82, 0.8);
}
