import 'package:flutter/material.dart';
import 'package:calc_app/colors/colors_patterns.dart';
import 'package:provider/provider.dart';
import 'package:calc_app/providers/color_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int selectedColorStyle = ColorsPatterns().pattern;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            ColorsPatterns().mainColor4(context.watch<ColorProvider>().pattern),
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: ColorsPatterns()
                  .mainColor1(context.watch<ColorProvider>().pattern)),
        ),
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  selectedColorStyle = 0;
                  context
                      .read<ColorProvider>()
                      .changeColorPattern(colorPattern: selectedColorStyle);
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: (selectedColorStyle == 0)
                        ? ColorsPatterns()
                            .mainColor3(context.watch<ColorProvider>().pattern)
                        : ColorsPatterns()
                            .mainColor2(context.watch<ColorProvider>().pattern),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(220, 242, 241, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(127, 199, 217, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(54, 84, 134, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(15, 16, 53, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  )),
                ]),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  selectedColorStyle = 1;
                  context
                      .read<ColorProvider>()
                      .changeColorPattern(colorPattern: selectedColorStyle);
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: (selectedColorStyle == 1)
                        ? ColorsPatterns()
                            .mainColor3(context.watch<ColorProvider>().pattern)
                        : ColorsPatterns()
                            .mainColor2(context.watch<ColorProvider>().pattern),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(239, 236, 236, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 176, 176, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 103, 54, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(12, 45, 87, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  )),
                ]),
              ),
            ))
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  selectedColorStyle = 2;
                  context
                      .read<ColorProvider>()
                      .changeColorPattern(colorPattern: selectedColorStyle);
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: (selectedColorStyle == 2)
                        ? ColorsPatterns()
                            .mainColor3(context.watch<ColorProvider>().pattern)
                        : ColorsPatterns()
                            .mainColor2(context.watch<ColorProvider>().pattern),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(243, 237, 200, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(234, 209, 150, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(191, 49, 49, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(125, 10, 10, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  )),
                ]),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  selectedColorStyle = 3;
                  context
                      .read<ColorProvider>()
                      .changeColorPattern(colorPattern: selectedColorStyle);
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: (selectedColorStyle == 3)
                        ? ColorsPatterns()
                            .mainColor3(context.watch<ColorProvider>().pattern)
                        : ColorsPatterns()
                            .mainColor2(context.watch<ColorProvider>().pattern),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(231, 136, 149, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(190, 209, 207, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 228, 201, 1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 247, 241, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  )),
                ]),
              ),
            ))
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  selectedColorStyle = 4;
                  context
                      .read<ColorProvider>()
                      .changeColorPattern(colorPattern: selectedColorStyle);
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: (selectedColorStyle == 4)
                        ? ColorsPatterns()
                            .mainColor3(context.watch<ColorProvider>().pattern)
                        : ColorsPatterns()
                            .mainColor2(context.watch<ColorProvider>().pattern),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(13, 146, 118,1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(64, 162, 227,1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(187, 226, 236,1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 246, 233,1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  )),
                ]),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  selectedColorStyle = 5;
                  context
                      .read<ColorProvider>()
                      .changeColorPattern(colorPattern: selectedColorStyle);
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: (selectedColorStyle == 5)
                        ? ColorsPatterns()
                            .mainColor3(context.watch<ColorProvider>().pattern)
                        : ColorsPatterns()
                            .mainColor2(context.watch<ColorProvider>().pattern),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 209, 227,1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(163, 103, 177,1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(93, 53, 135,1)),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(57, 36, 103,1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  )),
                ]),
              ),
            ))
          ],
        ))
      ]),
    );
  }
}
