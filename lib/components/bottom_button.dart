import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
   BottomButton(this.navigateTo, this.buttonTitle);

  final navigateTo;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigateTo,
      child: Container(
        padding: const EdgeInsetsDirectional.only(bottom: 15),
        color: kRedColorShade,
        width: double.infinity,
        height: 88.0,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
            child: Text(
              buttonTitle,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
