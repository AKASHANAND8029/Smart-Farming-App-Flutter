

import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final nitrogen = TextEditingController();
  final phosphorous = TextEditingController();
  final potassium = TextEditingController();
  final temperature = TextEditingController();
  final humidity = TextEditingController();
  final pHvalue = TextEditingController();
  final rainfall = TextEditingController();
  double s = 0;
  
  String nit(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  String pho(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  String pot(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  String temp(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  String humid(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  String pH(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  String rain(String val) {
    if (val.length < 1) {
      return 'Value can not be empty';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(fit: StackFit.expand, children: [
        Container(
            // color: Colors.amber,
            child: Image.asset("images/pic.jpg",
                fit: BoxFit.fill,
                color: Colors.black54,
                colorBlendMode: BlendMode.darken)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: nitrogen,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "Value Of Nitrogen",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: phosphorous,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "Value Of Phosphorous",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: potassium,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "Value Of Potassium",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: temperature,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "Value Of temperature",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: rainfall,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "NAME",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: humidity,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "ADHAAR NUMBER",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                  controller: pHvalue,
                  validator: nit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: "MOBILE NUMBER",
                    helperStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(
                onPressed: () {
                  s = double.parse(nitrogen.text) +
                      double.parse(phosphorous.text) +
                      double.parse(potassium.text) +
                      double.parse(temperature.text) +
                      double.parse(pHvalue.text) +
                      double.parse(humidity.text) +
                      double.parse(rainfall.text);
                  setState(() {
                    print(s);
                  });
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2(sum: s, rain: double.parse(rainfall.text),)));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
              ),
            )
          ],
        )
      ]),
    );
  }
}
