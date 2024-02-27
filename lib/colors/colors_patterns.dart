import 'package:flutter/material.dart';

class ColorsPatterns{

  int pattern = 0;
  
  Color mainColor1(int pattern) {
    switch (pattern) {
      case 0:
        return const Color.fromRGBO(220, 242, 241, 1);
        case 1:
        return const Color.fromRGBO(239, 236, 236,1);
        case 2:
        return const Color.fromRGBO(243, 237, 200,1);
        case 3:
        return const Color.fromRGBO(231, 136, 149,1);
        case 4:
        return const Color.fromRGBO(13, 146, 118,1);
      default:
        return const Color.fromRGBO(255, 209, 227,1);
    }
  }

  Color mainColor2(int pattern) {
        switch (pattern) {
      case 0:
        return const Color.fromRGBO(127, 199, 217, 1);
        case 1:
        return const Color.fromRGBO(255, 176, 176,1);
        case 2:
        return const Color.fromRGBO(234, 209, 150,1);
        case 3:
        return const Color.fromRGBO(190, 209, 207,1);
        case 4:
        return const Color.fromRGBO(64, 162, 227,1);
      default:
        return const Color.fromRGBO(163, 103, 177,1);
    }
  }

  Color mainColor3(int pattern) {
        switch (pattern) {
      case 0:
        return const Color.fromRGBO(54, 84, 134, 1);
        case 1:
        return const Color.fromRGBO(252, 103, 54,1);
        case 2:
        return const Color.fromRGBO(191, 49, 49,1);
        case 3:
        return const Color.fromRGBO(255, 228, 201,1);
        case 4:
        return const Color.fromRGBO(187, 226, 236,1);
      default:
        return const Color.fromRGBO(93, 53, 135,1);
    }
  }

  Color mainColor4(int pattern) {
        switch (pattern) {
      case 0:
        return const Color.fromRGBO(15, 16, 53, 1);
        case 1:
        return const Color.fromRGBO(12, 45, 87,1);
        case 2:
        return const Color.fromRGBO(125, 10, 10,1);
        case 3:
        return const Color.fromRGBO(255, 247, 241,1);
        case 4:
        return const Color.fromRGBO(255, 246, 233,1);
      default:
        return const Color.fromRGBO(57, 36, 103,1);
    }
  }
}
