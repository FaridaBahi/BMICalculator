import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),/*.copyWith(
        //primaryColor: Color(0xFF770737),
        scaffoldBackgroundColor: Color(0xFF770737),
        //instead of accent(secondary) it suggested to use this
        /*colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.black,
        ),*/
      ),*/
      home: InputPage(),
      /*initialRoute: "inputScr",
      routes: { //Map
        "inputScr" : (context) => const InputPage(),
        "resultScr" : (context) => const ResultPage()
      },*/
    );
  }
}

