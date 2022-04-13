import 'mycolor.dart';
import 'package:flutter/material.dart';

String title = "BMI Calculator";

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double W = (width - 60) / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: MyColor.blackLight,
      ),
      backgroundColor: MyColor.blackDark,
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: W,
                    height: W,
                    decoration: BoxDecoration(
                      color: MyColor.blackLight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: W / 2,
                          color: Colors.white,
                        ),
                        const Text(
                          "Male",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: W,
                    height: W,
                    decoration: BoxDecoration(
                      color: MyColor.blackLight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        IconButton(
                          icon: Icon(
                            Icons.female,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          onPressed: dothis,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void dothis() {}
