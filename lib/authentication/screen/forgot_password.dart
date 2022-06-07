import 'package:bmi_calculator/authentication/customwidget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // for password text field controller
  final TextEditingController _forgotpasswordcontroller =
      TextEditingController();

  // bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 34),
          width: double.infinity,
          child: Column(
            // centered like horizontal direction x axis
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              // svg image
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.black,
                height: 64,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    child: Text('bdxbnd'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextField(
                textEditingController: _forgotpasswordcontroller,
                textInputType: TextInputType.phone,
                hintText: 'Email Id / Mobile number',
                icon: Icon(Icons.email),
                suffixicon: Icon(Icons.phone),
              ),
              // textfield input email
              // CustomTextField(
              //   // we have to create a variable for text editing controller
              //   textEditingController: _emailcontroller,
              //   textInputType: TextInputType.emailAddress,
              //   hintText: 'Enter Your E-mail',
              //   icon: Icon(Icons.email),
              // ),
              // SizedBox(
              //   height: 24,
              // ),
              // // textfield input password
              // CustomTextField(
              //   // we have to create a variable for text editing controller
              //   textEditingController: _passwordcontroller,
              //   textInputType: TextInputType.visiblePassword,
              //   hintText: 'Enter Your Password',
              //   icon: Icon(Icons.lock),
              //   suffixicon: InkWell(
              //     onTap: () {
              //       setState(() {
              //         isHiddenPassword = !isHiddenPassword;
              //       });
              //     },
              //     child: Icon(isHiddenPassword
              //         ? Icons.visibility
              //         : Icons.visibility_off),
              //   ),
              //   //Icon(Icons.visibility_off),
              //   isPass: isHiddenPassword,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
