import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminChatPage extends StatefulWidget {
  const AdminChatPage({super.key});

  @override
  State<AdminChatPage> createState() => _AdminChatPageState();
}

class _AdminChatPageState extends State<AdminChatPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(210, 42, 47, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, size: 26,  color: Color.fromRGBO(80, 71, 128, 1))),
                  ),
                  SizedBox(width: 8,),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Help", style: GoogleFonts.roboto(fontSize: 20, color: Color.fromRGBO(80, 71, 128, 1), fontWeight: FontWeight.bold),)),



                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 100,
                      child: Image.asset("assets/uccLogo.png"),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Admin", style: GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("active", style: GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.white),),
                      ],
                    ),

                    // Spacer(),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.phone, color: Color.fromRGBO(80, 71, 128, 1),),
                  )
                  ],
                ),
              ),

              SizedBox(height: 0,),


              Expanded(
                child: Container(
                  width: double.infinity,
                  // height: screenHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(30))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(80, 71, 128, 1),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Hello Admin", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        SizedBox(height: 16,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(210, 42, 47, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("What's up?", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        SizedBox(height: 16,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(80, 71, 128, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Thank you for the service.", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        SizedBox(height: 16,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(210, 42, 47, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Okay... No Problem", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(80, 71, 128, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Awesome", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        SizedBox(height: 16,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(80, 71, 128, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Good Day", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        SizedBox(height: 16,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(210, 42, 47, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20), topRight: Radius.circular(20))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Hello User, How can I help you?", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
                              ),

                            )
                          ],
                        ),

                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: TextField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.multiline,
                              style: GoogleFonts.roboto(color: Colors.black, fontSize: 15),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.send, size: 30, color: Color.fromRGBO(80, 71, 128, 1), ),
                                  contentPadding: EdgeInsets.only(top: 6, left: 16),
                                  hintText: "Write a message...",
                                  // suffixIcon: Icon(Icons.calendar_month, color: Colors.white,),
                                  hintStyle: GoogleFonts.roboto(color: Colors.black, fontSize: 16),
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
                  ),
                ),
              )





            ],
          ),
        ),
      ),
    );
  }
}
