import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'colors/colors_patterns.dart';
import 'navigations/tabbar.dart';
import 'providers/color_provider.dart';

main() {
  runApp(const CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({super.key});

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ColorProvider())],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
            scaffoldBackgroundColor: ColorsPatterns().mainColor4(context.watch<ColorProvider>().pattern),
            brightness: Brightness.dark,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: ColorsPatterns().mainColor4(context.watch<ColorProvider>().pattern),
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                fontSize: 12,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
              ),
              selectedItemColor: ColorsPatterns().mainColor2(context.watch<ColorProvider>().pattern),
              unselectedItemColor: ColorsPatterns().mainColor1(context.watch<ColorProvider>().pattern),
            )),
        home: const Tabbar(),
      ),
    );
  }
}
