import 'package:flutter/material.dart';
import 'package:calc_app/colors/colors_patterns.dart';
import 'package:provider/provider.dart';
import 'package:calc_app/providers/color_provider.dart';

class BMIPage extends StatefulWidget {
  final double bmi;
  const BMIPage({super.key, required this.bmi});

  @override
  State<BMIPage> createState() => _BMIPageState(bmi);
}

class _BMIPageState extends State<BMIPage> {
  final double bmi;
  _BMIPageState(this.bmi);
  String message = "", keyWord = "";
  Color keyWordColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    if (bmi < 18.5) {
      message =
          "You`re a bit too light for your height, but don`t worry, you can gain some healthy weight with a balanced diet and exercise. 😊";
      keyWord = "UNDERWEIGHT";
      keyWordColor = Colors.cyan;
    } else if (bmi < 25) {
      message =
          "You`re in the sweet spot of the BMI range, good job! Keep up the healthy habits and enjoy your life. 😊";
      keyWord = "NORMAL";
      keyWordColor = Colors.green;
    } else if (bmi < 30) {
      message =
          "You`re a bit too heavy for your height, but don`t worry, you can lose some extra weight with a balanced diet and exercise. 😊";
      keyWord = "OVERWEIGHT";
      keyWordColor = Colors.amber;
    } else if (bmi < 35) {
      message =
          "You`re way too heavy for your height, and that can be risky for your health. But don`t worry, you can make some positive changes with a balanced diet and exercise. 😊";
      keyWord = "OBESE";
      keyWordColor = Colors.orange;
    } else {
      message =
          "You`re extremely heavy for your height, and that can be very dangerous for your health. But don`t worry, you can turn things around with a balanced diet and exercise. 😊";
      keyWord = "EXTREMELY OBESE";
      keyWordColor = Colors.red;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            ColorsPatterns().mainColor4(context.watch<ColorProvider>().pattern),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: ColorsPatterns()
                  .mainColor1(context.watch<ColorProvider>().pattern)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "${context.watch<ColorProvider>().username}'s Result",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: ColorsPatterns()
                    .mainColor1(context.watch<ColorProvider>().pattern),
              ),
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: ColorsPatterns()
                    .mainColor2(context.watch<ColorProvider>().pattern),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    keyWord,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: keyWordColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: ColorsPatterns()
                          .mainColor4(context.watch<ColorProvider>().pattern),
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: ColorsPatterns()
                          .mainColor4(context.watch<ColorProvider>().pattern),
                    ),
                    textAlign: TextAlign.center,
                  )
                ]),
          )),
          Container(
            color: ColorsPatterns()
                .mainColor1(context.watch<ColorProvider>().pattern),
            width: double.infinity,
            height: 70,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Re-Calculate",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: ColorsPatterns()
                        .mainColor4(context.watch<ColorProvider>().pattern)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
