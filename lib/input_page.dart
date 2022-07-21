import 'package:flutter/material.dart';

const bottomContainerHight = 80.0;
const Color reusableCradColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEb1555);
const Color scaffoldBackgroundColor = Color(0xFF0E1436);

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: reusableCradColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reusableCradColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: ReusableCard(colour: reusableCradColor),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: reusableCradColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reusableCradColor),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            height: bottomContainerHight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ReusableCard({required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
