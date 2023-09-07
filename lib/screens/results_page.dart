import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("BMI RESULT")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),),
                  Text(
                    bmiResult,
                    style: const TextStyle(fontSize: 90, fontWeight: FontWeight.w900,),
                  ),
                  Text(interpretation, textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                ],
                  ),
                )),
            BottomButton(() {Navigator.pop(context);}, "Re-Calculate BMI")
          ],
        ));
  }
}
