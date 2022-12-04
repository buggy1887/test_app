import 'package:flutter/material.dart';
import 'pages/auth_page.dart';
import 'constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: GlobalVariables.greyColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: GlobalVariables.primaryColor,
            ),
          ),
          labelStyle: TextStyle(
            color: GlobalVariables.greyColor,
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          primary: GlobalVariables.primaryColor,
        ),
        fontFamily: 'Outfit',
        iconTheme: const IconThemeData(
          color: GlobalVariables.greyColor,
        ),
      ),
      home: LoginDemo(),
    );
  }
}
