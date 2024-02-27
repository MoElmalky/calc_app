import 'package:flutter/material.dart';
import 'package:calc_app/colors/colors_patterns.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:calc_app/providers/color_provider.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  double number1 = 0, number2 = 0, result = 0;
  TextEditingController number1Controller = TextEditingController(),
      number2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            ColorsPatterns().mainColor4(context.watch<ColorProvider>().pattern),
        title: Text(
          "Calculator",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: ColorsPatterns()
                  .mainColor1(context.watch<ColorProvider>().pattern)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 40, bottom: 40, right: 20, left: 20),
            decoration: BoxDecoration(
                color: ColorsPatterns()
                    .mainColor2(context.watch<ColorProvider>().pattern),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    controller: number1Controller,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9\.\-]')),
                    ],
                    decoration: InputDecoration(
                      labelText: "Number1",
                      filled: true,
                      labelStyle: TextStyle(
                          fontSize: 24,
                          color: ColorsPatterns().mainColor4(
                              context.watch<ColorProvider>().pattern)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                            width: 2.0),
                      ),
                      fillColor: ColorsPatterns()
                          .mainColor1(context.watch<ColorProvider>().pattern),
                      focusColor: ColorsPatterns()
                          .mainColor1(context.watch<ColorProvider>().pattern),
                    ),
                    cursorColor: ColorsPatterns()
                        .mainColor4(context.watch<ColorProvider>().pattern),
                    style: TextStyle(
                        fontSize: 18,
                        color: ColorsPatterns().mainColor4(
                            context.watch<ColorProvider>().pattern)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: number2Controller,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9\.\-]')),
                    ],
                    decoration: InputDecoration(
                      labelText: "Number2",
                      filled: true,
                      labelStyle: TextStyle(
                          fontSize: 24,
                          color: ColorsPatterns().mainColor4(
                              context.watch<ColorProvider>().pattern)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                            width: 2.0),
                      ),
                      fillColor: ColorsPatterns()
                          .mainColor1(context.watch<ColorProvider>().pattern),
                      focusColor: ColorsPatterns()
                          .mainColor1(context.watch<ColorProvider>().pattern),
                    ),
                    cursorColor: ColorsPatterns()
                        .mainColor4(context.watch<ColorProvider>().pattern),
                    style: TextStyle(
                        fontSize: 18,
                        color: ColorsPatterns().mainColor4(
                            context.watch<ColorProvider>().pattern)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 60,
                  color: ColorsPatterns()
                      .mainColor2(context.watch<ColorProvider>().pattern),
                ),
                Text(
                  "Result = ${result.toStringAsFixed(2)}",
                  style: TextStyle(
                      color: ColorsPatterns()
                          .mainColor1(context.watch<ColorProvider>().pattern),
                      fontSize: 32),
                ),
                Container(
                  height: 25,
                  width: 60,
                  color: ColorsPatterns()
                      .mainColor2(context.watch<ColorProvider>().pattern),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 80),
            decoration: BoxDecoration(
                color: ColorsPatterns()
                    .mainColor2(context.watch<ColorProvider>().pattern),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      number1 = double.parse(number1Controller.text);
                      number2 = double.parse(number2Controller.text);
                      result = number1 + number2;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90)),
                  backgroundColor: ColorsPatterns()
                      .mainColor1(context.watch<ColorProvider>().pattern),
                  foregroundColor: ColorsPatterns()
                      .mainColor4(context.watch<ColorProvider>().pattern),
                  splashColor: ColorsPatterns()
                      .mainColor3(context.watch<ColorProvider>().pattern),
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        number1 = double.parse(number1Controller.text);
                        number2 = double.parse(number2Controller.text);
                        result = number1 - number2;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90)),
                    backgroundColor: ColorsPatterns()
                        .mainColor1(context.watch<ColorProvider>().pattern),
                    foregroundColor: ColorsPatterns()
                        .mainColor4(context.watch<ColorProvider>().pattern),
                    splashColor: ColorsPatterns()
                        .mainColor3(context.watch<ColorProvider>().pattern),
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 28),
                    )),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      number1 = double.parse(number1Controller.text);
                      number2 = double.parse(number2Controller.text);
                      result = number1 * number2;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90)),
                  backgroundColor: ColorsPatterns()
                      .mainColor1(context.watch<ColorProvider>().pattern),
                  foregroundColor: ColorsPatterns()
                      .mainColor4(context.watch<ColorProvider>().pattern),
                  splashColor: ColorsPatterns()
                      .mainColor3(context.watch<ColorProvider>().pattern),
                  child: const Text(
                    "x",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        number1 = double.parse(number1Controller.text);
                        number2 = double.parse(number2Controller.text);
                        result = number1 / number2;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90)),
                    backgroundColor: ColorsPatterns()
                        .mainColor1(context.watch<ColorProvider>().pattern),
                    foregroundColor: ColorsPatterns()
                        .mainColor4(context.watch<ColorProvider>().pattern),
                    splashColor: ColorsPatterns()
                        .mainColor3(context.watch<ColorProvider>().pattern),
                    child: const Text(
                      "/",
                      style: TextStyle(fontSize: 28),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
