import 'package:bmi_calculator/authentication/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'authentication/screen/login.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // ),
      //home: InputPage(),
      //home: HomeScreen(),
       home: LoginScreen(),
      //home: SignUpScreen(),
    );
  }
}
