import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Credential extends StatefulWidget {
  // const Credential({ Key? key }) : super(key: key);

  @override
  _CredentialState createState() => _CredentialState();
}

class _CredentialState extends State<Credential> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formkey,
          child: SafeArea(
            top: true,
            right: true,
            left: true,
            bottom: true,
            child: Stack(fit: StackFit.expand, children: [
              Container(
                  // color: Colors.amber,
                  child: Image.asset("images/pic.jpg",
                      fit: BoxFit.fill,
                      color: Colors.black54,
                      colorBlendMode: BlendMode.darken)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 75,
                    ),
                    child: Container(child: Image.asset('images/farmer.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 15,
                      top: 5,
                    ),
                    child: TextFormField(
                        // controller: temperature,
                        // validator: nit,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter Your Name",
                          hintStyle: GoogleFonts.openSans(
                            fontSize: 20,
                          ),
                          filled: true,
                          fillColor: Colors.white54,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            // borderSide: BorderSide(color: Colors.red),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 15,
                    ),
                    child: TextFormField(
                        // controller: temperature,
                        // validator: nit,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter Your Mobile Number",
                          hintStyle: GoogleFonts.openSans(
                            fontSize: 20,
                          ),
                          filled: true,
                          fillColor: Colors.white54,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            // borderSide: BorderSide(color: Colors.red),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 30,
                    ),
                    child: TextFormField(
                        // controller: temperature,
                        // validator: nit,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter Your Adhaar Number",
                          hintStyle: GoogleFonts.openSans(
                            fontSize: 20,
                          ),
                          filled: true,
                          fillColor: Colors.white54,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            // borderSide: BorderSide(color: Colors.red),
                          ),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: GoogleFonts.openSans(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
