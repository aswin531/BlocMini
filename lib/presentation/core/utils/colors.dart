import 'package:flutter/material.dart';

Color primaryq = const Color(0xFF01147C);
Color primary = const Color(0xFF0C1840);
Color black = Colors.black;
Color transparent = Colors.transparent;
Color color1 = const Color(0xFF007bff);
Color color2 = const Color.fromARGB(255, 13, 27, 71);
Color color3 = const Color.fromARGB(255, 255, 193, 7);
Color addColor = Colors.blue;
Color addgrey = const Color.fromARGB(255, 68, 68, 68);
Color transparentGold = const Color.fromRGBO(255, 215, 0, 0.5);
Color white = Colors.white;
Color lwhite = Colors.white.withOpacity(0.8);
Color grey = Colors.grey;
Color bgcolor = const Color.fromRGBO(15, 16, 20, 1);
Color lightblack = const Color.fromRGBO(15, 16, 20, 1.0);
Color lightwhite = const Color.fromRGBO(216, 217, 226, 1.0);
Color selectedColor = const Color.fromRGBO(33, 34, 39, 1.0);

LinearGradient customGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: const [0.1, 1.0],
  colors: [
    primary,
    black,
  ],
);

final myGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    color1,
    primary,
    primaryq,
    color2,
  ],
);

Color gethelp = const Color.fromARGB(255, 37, 118, 239);
const List<Color> blues = [
  Color.fromARGB(255, 12, 70, 132),
  Color.fromARGB(8, 78, 211, 255),
  Color.fromARGB(255, 3, 29, 85),
  Color.fromARGB(6, 44, 155, 255),
];

const blueGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: blues,
);
