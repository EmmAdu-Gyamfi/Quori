import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SnrLecturerPage extends StatefulWidget {
  const SnrLecturerPage({super.key});

  @override
  State<SnrLecturerPage> createState() => _SnrLecturerPageState();
}

class _SnrLecturerPageState extends State<SnrLecturerPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0),
          child: Stack(
            children: [
              Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth,
                    // color: Colors.blue,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: screenWidth*0.35,),

                        Container(
                          // color: Colors.red,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Quori Bot", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),),

                              SizedBox(height: 4,),

                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,

                                    ),
                                  ),

                                  SizedBox(width: 8,),
                                  Text("Connected", style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.green),),

                                ],
                              )
                            ],
                          ),
                        ),

                        // SizedBox(width: screenWidth*0.2,),
                        Spacer(),
                        Container(
                            height: 25,
                            width: 25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Icon(Icons.keyboard_alt_outlined, color: Color.fromRGBO(0, 33, 114, 1), size: 18,))
                      ],
                    ),
                  ),


                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 35,
                      // color: Colors.red,
                      child: TextField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.multiline,
                        style: GoogleFonts.roboto(color: Colors.black, fontSize: 15),
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.send, size: 24, color: Colors.black, ),
                          contentPadding: EdgeInsets.only(top: 6, left: 16),
                            hintText: "Write a message...",
                            // suffixIcon: Icon(Icons.calendar_month, color: Colors.white,),
                            hintStyle: GoogleFonts.roboto(color: Colors.black.withOpacity(0.5)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),

                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),

                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),

                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            )
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Positioned(
                top: 0,
                left: -50,
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.green,

                  ),
                  child: Image.asset("assets/AI.png", fit: BoxFit.fill,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
