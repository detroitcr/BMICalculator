import 'package:bmi_calculator/authentication/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';
import '../customwidget/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // for email text field controller
  final TextEditingController _emailcontroller = TextEditingController();

  // for password text field controller
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _mobilenumbercontroler = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  bool isHiddenPassword = true;

  // @override
  // // for permanently remove or unmounted

  // void dispose() {
  //   super.dispose();
  //   _emailcontroller.dispose();
  //   _passwordcontroller.dispose();
  //   _mobilenumbercontroler.dispose();
  //   _usernamecontroller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          // we need to some adding padding
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            width: double.infinity,
            child: Column(
              // centered like horizontal direction x axis
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // svg image
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  color: Colors.black,
                  height: 64,
                ),
                const SizedBox(
                  height: 40,
                ),
                // circular widget to accept and show our selectedfile
                // Stack(
                //   children: [
                //     CircleAvatar(
                //       radius: 64,
                //       backgroundImage: NetworkImage(
                //           'https://images.unsplash.com/photo-1642056583446-9223e0684e19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                //     ),
                //     Positioned(
                //       bottom: -10,
                //       left: 80,
                //       child: IconButton(
                //         onPressed: () {},
                //         icon: Icon(Icons.add_a_photo),
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 24,
                ),
                // textfield input user
                CustomTextField(
                  // we have to create a variable for text editing controller
                  textEditingController: _usernamecontroller,
                  textInputType: TextInputType.name,
                  hintText: 'Enter Your Full Name',
                  icon: Icon(Icons.verified_user),
                ),
                const SizedBox(
                  height: 24,
                ),
                // textfield input email
                CustomTextField(
                  // we have to create a variable for text editing controller
                  textEditingController: _emailcontroller,
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Enter Your E-mail',
                  icon: Icon(Icons.email),
                ),
                const SizedBox(
                  height: 24,
                ),
                // textfield input password
                CustomTextField(
                  // we have to create a variable for text editing controller
                  textEditingController: _passwordcontroller,
                  textInputType: TextInputType.visiblePassword,
                  hintText: 'Enter Your Password',
                  isPass: isHiddenPassword,
                  icon: Icon(Icons.lock),
                  suffixicon: InkWell(
                    onTap: () {
                      setState(() {
                        isHiddenPassword = !isHiddenPassword;
                      });
                    },
                    child: Icon(isHiddenPassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),

                CustomTextField(
                  // we have to create a vari for text editing controller
                  textEditingController: _mobilenumbercontroler,
                  textInputType: TextInputType.number,
                  hintText: 'Enter Your Mobile Number',
                  icon: Icon(Icons.phone),
                ),
                const SizedBox(
                  height: 24,
                ),
                // button login
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: const Text('Continue'),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    decoration: const ShapeDecoration(
                      color: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // // for creating spacing in upper side
                // Flexible(
                //   child: Container(),
                //   flex: 2,
                // ),
                // Transitioning to signing up

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text("Joined us before?"),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => LoginScreen())));
                      },
                      child: Container(
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
