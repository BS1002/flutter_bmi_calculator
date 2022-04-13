import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';
import 'mycolor.dart';

String title = "BMI Calculator";
late double width;
late double height;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: MyColor.blackLight,
      ),
      backgroundColor: MyColor.blackDark,
      body: Container(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Gender(),
            Hieght(),
          ],
        ),
      ),
    );
  }
}

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    updateState() {
      setState(() {
        isMale = !isMale;
      });
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            child: getRoundButtonWithIcon(
                isMale ? MyColor.purple : MyColor.blackLight,
                Icons.male,
                "Male"),
            onTap: updateState),
        InkWell(
          child: getRoundButtonWithIcon(
              isMale ? MyColor.blackLight : MyColor.purple,
              Icons.female,
              "Female"),
          onTap: updateState,
        )
      ],
    );
  }
}

getRoundButtonWithIcon(Color bgColor, IconData icon, String text) {
  double W = (width - 60) / 2;
  return Container(
    width: W,
    height: W,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: W / 2,
          color: Colors.white,
        ),
        mText(text)
      ],
    ),
  );
}

class Hieght extends StatefulWidget {
  @override
  _HieghtState createState() => _HieghtState();
}

class _HieghtState extends State<Hieght> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        mText("HEIGHT"),
        mText(_currentSliderValue.toString()),
        Slider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
