import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    (MaterialPageRoute(
                      builder: (context) {
                        return InputPage();
                      },
                    )));
              },
              icon: Icon(Icons.next_plan_sharp),
            ),
          ],
          title: MyText(
            text: 'Exercise',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kActiveCardColor,
        body: Center(
          child: Column(
            children: [
              Text('First Box'),
              Text('First Box'),
              Text('First Box'),
              Text('First Box'),
              Text('First Box'),
              Text('First Box'),
            ],
          ),
        ),
      ),
    );
  }
}
