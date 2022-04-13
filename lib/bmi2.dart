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
            child: RoundButtonWithIcon(
                isMale ? MyColor.purple : MyColor.blackLight,
                Icons.male,
                "Male"),
            onTap: updateState),
        InkWell(
          child: RoundButtonWithIcon(
              isMale ? MyColor.blackLight : MyColor.purple,
              Icons.female,
              "Female"),
          onTap: updateState,
        )
      ],
    );
  }
}

class RoundButtonWithIcon extends StatelessWidget {
  Color color;
  IconData icon;
  String text;
  RoundButtonWithIcon(this.color, this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    double W = (width - 60) / 2;
    return Container(
      width: W,
      height: W,
      decoration: BoxDecoration(
        color: color,
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
          Text(
            text,
            style: const TextStyle(fontSize: 24.0, color: Colors.white),
          )
        ],
      ),
    );
  }
}
