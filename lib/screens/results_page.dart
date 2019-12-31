import 'package:bmi_calc/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calc/components/bottom_button.dart';

class Results extends StatelessWidget {

  Results({this.bmiResult,this.interpretataion,this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretataion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretataion,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RECALCULATE",
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
