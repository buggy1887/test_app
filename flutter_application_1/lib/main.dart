import 'package:flutter/material.dart';
import './pages/HomePage.dart';
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

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 273.0, bottom: 56),
              child: Center(
                child: SizedBox(
                    width: 323.35,
                    height: 66,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/flutter-logo.png')),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                  hintText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black,
                ),
                obscureText: _isObscure,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const UnderlineInputBorder(),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    color: GlobalVariables.greyColor,
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: (() {
                      setState(
                        () {
                          _isObscure = !_isObscure;
                        },
                      );
                    }),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 326,
              decoration: const BoxDecoration(
                color: GlobalVariables.primaryColor,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const HomePage(
                                title: 'MyHomePage',
                              )));
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
