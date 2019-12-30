import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 60.0;
const activeCardColor = Color(0xFF212121);
const bottomContainerColor = Color(0xFF212121);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars, label: "MALE",),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, label: "FEMALE",),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: bottomContainerColor,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}



