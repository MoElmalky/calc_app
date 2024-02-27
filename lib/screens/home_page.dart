import 'package:calc_app/screens/bmi_page.dart';
import 'package:calc_app/colors/colors_patterns.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calc_app/providers/color_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = false, isFemale = false;
  double currentHeight = 160,
      currentWeight = 60,
      age = 20,
      bmi = 0,
      heightInMeters = 1.6;
  Color maleTrigger = Colors.black, femaleTrigger = Colors.black;
  @override
  Widget build(BuildContext context) {
    if (isFemale) {
      femaleTrigger =
          ColorsPatterns().mainColor3(context.watch<ColorProvider>().pattern);
    } else {
      femaleTrigger =
          ColorsPatterns().mainColor2(context.watch<ColorProvider>().pattern);
    }
    if (isMale) {
      maleTrigger =
          ColorsPatterns().mainColor3(context.watch<ColorProvider>().pattern);
    } else {
      maleTrigger =
          ColorsPatterns().mainColor2(context.watch<ColorProvider>().pattern);
    }
    heightInMeters = currentHeight / 100;
    bmi = currentWeight / (heightInMeters * heightInMeters);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsPatterns()
            .mainColor4(context.watch<ColorProvider>().pattern),
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
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMale = !isMale;
                      isFemale = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                        left: 10, right: 5, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: maleTrigger,
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 100,
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 24,
                              color: ColorsPatterns().mainColor4(
                                  context.watch<ColorProvider>().pattern),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMale = false;
                      isFemale = !isFemale;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(
                        left: 5, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: femaleTrigger,
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 24,
                              color: ColorsPatterns().mainColor4(
                                  context.watch<ColorProvider>().pattern),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorsPatterns()
                      .mainColor2(context.watch<ColorProvider>().pattern),
                  borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 28,
                        color: ColorsPatterns().mainColor4(
                            context.watch<ColorProvider>().pattern),
                      ),
                    ),
                    Text(
                      "$currentHeight cm",
                      style: TextStyle(
                        fontSize: 36,
                        color: ColorsPatterns().mainColor4(
                            context.watch<ColorProvider>().pattern),
                      ),
                    ),
                    Slider(
                      value: currentHeight,
                      divisions: 120,
                      //label: currentHeight.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          currentHeight = value;
                        });
                      },
                      min: 100,
                      max: 220,
                      activeColor: ColorsPatterns()
                          .mainColor4(context.watch<ColorProvider>().pattern),
                      inactiveColor: ColorsPatterns()
                          .mainColor1(context.watch<ColorProvider>().pattern),
                    )
                  ]),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                      left: 10, right: 5, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: ColorsPatterns()
                          .mainColor2(context.watch<ColorProvider>().pattern),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            fontSize: 24,
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                          ),
                        ),
                        Text(
                          "$currentWeight",
                          style: TextStyle(
                            fontSize: 32,
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  currentWeight > 0
                                      ? currentWeight--
                                      : currentWeight = 0;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(90)),
                              backgroundColor: ColorsPatterns().mainColor1(
                                  context.watch<ColorProvider>().pattern),
                              foregroundColor: ColorsPatterns().mainColor4(
                                  context.watch<ColorProvider>().pattern),
                                  splashColor: ColorsPatterns().mainColor3(
                                    context.watch<ColorProvider>().pattern),
                              child: const Text(
                                "-",
                                style: TextStyle(fontSize: 32),
                              ),
                            ),
                            FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    currentWeight++;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90)),
                                backgroundColor: ColorsPatterns().mainColor1(
                                    context.watch<ColorProvider>().pattern),
                                foregroundColor: ColorsPatterns().mainColor4(
                                    context.watch<ColorProvider>().pattern),
                                    splashColor: ColorsPatterns().mainColor3(
                                    context.watch<ColorProvider>().pattern),
                                child: const Text(
                                  "+",
                                  style: TextStyle(fontSize: 32),
                                )),
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                      left: 5, right: 10, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: ColorsPatterns()
                          .mainColor2(context.watch<ColorProvider>().pattern),
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 24,
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            fontSize: 32,
                            color: ColorsPatterns().mainColor4(
                                context.watch<ColorProvider>().pattern),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age > 0 ? age-- : age = 0;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90)),
                                backgroundColor: ColorsPatterns().mainColor1(
                                    context.watch<ColorProvider>().pattern),
                                foregroundColor: ColorsPatterns().mainColor4(
                                    context.watch<ColorProvider>().pattern),
                                    splashColor: ColorsPatterns().mainColor3(
                                    context.watch<ColorProvider>().pattern),
                                child: const Text(
                                  "-",
                                  style: TextStyle(fontSize: 32),
                                )),
                            FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90)),
                                backgroundColor: ColorsPatterns().mainColor1(
                                    context.watch<ColorProvider>().pattern),
                                foregroundColor: ColorsPatterns().mainColor4(
                                    context.watch<ColorProvider>().pattern),
                                    splashColor: ColorsPatterns().mainColor3(
                                    context.watch<ColorProvider>().pattern),
                                child: const Text(
                                  "+",
                                  style: TextStyle(fontSize: 32),
                                )),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          )),
          Container(
            color: ColorsPatterns()
                .mainColor1(context.watch<ColorProvider>().pattern),
            width: double.infinity,
            height: 70,
            child: MaterialButton(
              onPressed: () {
                if (!isFemale && !isMale) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close")),
                      ],
                      title: const Text("BMI"),
                      contentPadding: const EdgeInsets.only(
                          right: 24, left: 24, bottom: 24, top: 20),
                      content: const Text("Please, Select your gender!"),
                    ),
                  );
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return BMIPage(bmi: bmi);
                  }));
                }
              },
              child: Text(
                "Calculate",
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
