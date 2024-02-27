import 'package:flutter/material.dart';
import 'package:calc_app/colors/colors_patterns.dart';
import 'package:provider/provider.dart';
import 'package:calc_app/providers/color_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController(),
      passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsPatterns()
              .mainColor4(context.watch<ColorProvider>().pattern),
          title: Text(
            "Login",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: ColorsPatterns()
                    .mainColor1(context.watch<ColorProvider>().pattern)),
          ),
        ),
        body: ListView(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ColorsPatterns()
                    .mainColor4(context.watch<ColorProvider>().pattern),
              ),
              child: Text(
                "Hi, ${context.watch<ColorProvider>().username}!",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: ColorsPatterns()
                        .mainColor1(context.watch<ColorProvider>().pattern)),
              ),
            )),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              height: 500,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorsPatterns()
                      .mainColor2(context.watch<ColorProvider>().pattern),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 80, right: 8, left: 8, bottom: 10),
                    child: TextFormField(
                      controller: userNameController,
                      maxLength: 12,
                      decoration: InputDecoration(
                        labelText: "Username",
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
                        suffixIcon: const Icon(Icons.person),
                        suffixIconColor: ColorsPatterns()
                            .mainColor4(context.watch<ColorProvider>().pattern),
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
                    padding: const EdgeInsets.only(
                        top: 10, right: 8, left: 8, bottom: 8),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
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
                        suffixIcon: const Icon(Icons.lock),
                        suffixIconColor: ColorsPatterns()
                            .mainColor4(context.watch<ColorProvider>().pattern),
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
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 60),
                    child: MaterialButton(
                      color: ColorsPatterns()
                          .mainColor4(context.watch<ColorProvider>().pattern),
                      splashColor:ColorsPatterns()
                          .mainColor3(context.watch<ColorProvider>().pattern) ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        setState(() {
                          context.read<ColorProvider>().changeUsername(
                              username: userNameController.text);
                          userNameController.clear();
                          passwordController.clear();
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: ColorsPatterns().mainColor1(
                                context.watch<ColorProvider>().pattern)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
