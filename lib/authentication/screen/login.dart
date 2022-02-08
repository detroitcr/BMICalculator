import 'package:bmi_calculator/authentication/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants.dart';
import '../customwidget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // for email text field controller
  final TextEditingController _emailcontroller = TextEditingController();

  // for password text field controller
  final TextEditingController _passwordcontroller = TextEditingController();

  bool isHiddenPassword = true;

//  @override
  // void _showButtonPressDialog(BuildContext context, String provider) {
  //   Scaffold.of(context).showSnackBar(SnackBar(
  //     content: Text('$provider Button Pressed!'),
  //     backgroundColor: Colors.black26,
  //     duration: Duration(milliseconds: 400),
  //   ));

  // @override
  // void _showButtonPressDialog(BuildContext context, String provider) {
  //   Scaffold.of(context).showSnackBar(SnackBar(
  //     content: Text('$provider Button Pressed!'),
  //     backgroundColor: Colors.black26,
  //     duration: Duration(milliseconds: 400),
  //   ));

  // @override
  // for permanently remove or unmounted

  // void dispose() {
  //   super.dispose();
  //   _emailcontroller.dispose();
  //   _passwordcontroller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 34),
          width: double.infinity,
          child: Column(
            // centered like horizontal direction x axis
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // svg image
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: primaryColor,
                height: 64,
              ),
              SizedBox(
                height: 150,
              ),
              // textfield input email
              CustomTextField(
                // we have to create a variable for text editing controller
                textEditingController: _emailcontroller,
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter Your E-mail',
                icon: Icon(Icons.email),
              ),
              SizedBox(
                height: 24,
              ),
              // textfield input password
              CustomTextField(
                // we have to create a variable for text editing controller
                textEditingController: _passwordcontroller,
                textInputType: TextInputType.visiblePassword,
                hintText: 'Enter Your Password',
                icon: Icon(Icons.lock),
                suffixicon: InkWell(
                  onTap: () {
                    setState(() {
                      isHiddenPassword = !isHiddenPassword;
                    });
                  },
                  child: Icon(isHiddenPassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                //Icon(Icons.visibility_off),
                isPass: isHiddenPassword,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text('Forget Password?'),
              ),
              Divider(),
              // button login
              InkWell(
                onTap: () {},
                child: Container(
                  child: Text('Log-in'),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              Container(
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              // signin package button
              Container(
                width: double.infinity,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {
                    //_showButtonPressDialog(context, 'Google');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                ),
              ),

              // Transitioning to signing up
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Don't have an account"),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    },
                    child: Container(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// InkWell(
//   onTap: () {},
//   child: Container(
//     child: Text(
//       'Login with Google',
//       style: TextStyle(color: Colors.black),
//     ),
//     width: double.infinity,
//     padding: EdgeInsets.symmetric(vertical: 12),
//     alignment: Alignment.center,
//     decoration: ShapeDecoration(
//       color: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(25),
//         ),
//       ),
//     ),
//   ),
// ), // for creating spacing in upper side
// Flexible(
//   child: Container(),
//   flex: 2,
// ),
