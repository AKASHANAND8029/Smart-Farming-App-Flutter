import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  double sum = 0;
  double rain = 0;

  Screen2({this.sum, this.rain});

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
    output = outputrain();
  }

  String output;
  String outputrain() {
    if (widget.rain <= 49) {
      return 'PEGIONPEAS';
    } else if ((widget.rain >= 50) && (widget.rain <= 99)) {
      return 'KIDNEYBEAN';
    } else if ((widget.rain >= 100) && (widget.rain <= 149)) {
      return 'CHICKPEAS';
    } else if ((widget.rain >= 150) && (widget.rain <= 200)) {
      return 'MAIZE';
    } else if ((widget.rain >= 201) && (widget.rain <= 400)) {
      return 'RICE';
    } else {
      return 'LIMIT CAN NOT EXCEED OVER 400';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(fit: StackFit.expand,
      children: [
        Container(
            // color: Colors.amber,
            child: Image.asset("images/background.jpg",
                fit: BoxFit.fill,
                color: Colors.black54,
                colorBlendMode: BlendMode.darken)),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 70,
                      width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(30.0))
                        ),
                        child: Center(
                          child: Text("Sum: ${widget.sum}",
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                      height: 70,
                      width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(30.0))
                        ),
                        child: Center(
                          child: Text("Crop: ${output}",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
      ],
        
      ),
    );
  }
}
