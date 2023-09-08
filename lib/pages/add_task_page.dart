import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
   var dateController = TextEditingController();
   var timeController = TextEditingController();
   MaterialColor _color = Colors.red;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateController.text = "Thursday 24, August";
    timeController.text = "02:21 AM";
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: screenHeight*0.4,
                color: _color,
                child: Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 16),
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back, size: 26, color: Colors.white,))
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 16),
                        child: Text("Create New Task", style: GoogleFonts.roboto(fontSize: 27, fontWeight: FontWeight.normal, color: Colors.white),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 0),
                        child: Text("Task", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextField(
                          cursorColor: Colors.white,
                         keyboardType: TextInputType.text,
                          style: GoogleFonts.roboto(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Enter your task",
                            hintStyle: GoogleFonts.roboto(color: Colors.white.withOpacity(0.5)),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white
                              )
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            ),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            )
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 8, top: 26),
                        child: Text("Date", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),),
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: 184,
                              height: 50,
                              child: TextField(
                                controller: dateController,
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.text,
                                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(

                                  suffixIcon: Icon(Icons.calendar_month, color: Colors.white,),
                                    hintStyle: GoogleFonts.roboto(color: Colors.white.withOpacity(0.5)),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                    disabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    )
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              width: 112,
                              height: 50,
                              child: TextField(
                                controller: timeController,
                                cursorColor: Colors.white,
                                keyboardType: TextInputType.text,
                                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(

                                    suffixIcon: Icon(Icons.watch_later_outlined, color: Colors.white,),
                                    hintStyle: GoogleFonts.roboto(color: Colors.white.withOpacity(0.5)),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                    disabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    )
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 9,
                          ),

                          Icon(CupertinoIcons.alarm_fill, color: Colors.white,),
                          Checkbox(value: false, onChanged: (val){}, checkColor: Colors.white, activeColor: Colors.white, side: BorderSide(color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16),
                child: Text("DESCRIPTION", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: TextField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "About Your Task",
                      hintStyle: GoogleFonts.roboto(color: Colors.grey.withOpacity(1)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          )
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          )
                      ),
                      disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          )
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20),
                child: Text("CATEGORY", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),),
              ),
              
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                          _color = Colors.red; // This change Container color
                          });

                        },
                        child: Container(
                          width: screenWidth*0.28,
                          height: screenHeight*0.04,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red.withOpacity(0.3),
                          ),
                          child: Text("STUDY", style: GoogleFonts.roboto(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            _color = Colors.blue; // This change Container color
                          });

                        },
                        child: Container(
                          width: screenWidth*0.28,
                          height: screenHeight*0.04,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue.withOpacity(0.3),
                          ),
                          child: Text("DEADLINE", style: GoogleFonts.roboto(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        setState(() {
                          _color = Colors.yellow; // This change Container color
                        });

                      },
                      child: Container(
                        width: screenWidth*0.28,
                        height: screenHeight*0.04,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow.withOpacity(0.3),
                        ),
                        child: Text("EVENTS", style: GoogleFonts.roboto(color: Colors.yellow, fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            _color = Colors.teal; // This change Container color
                          });

                        },
                        child: Container(
                          width: screenWidth*0.28,
                          height: screenHeight*0.04,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal.withOpacity(0.3),
                          ),
                          child: Text("ASSIGNMENT", style: GoogleFonts.roboto(color: Colors.teal, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            _color = Colors.purple; // This change Container color
                          });

                        },
                        child: Container(
                          width: screenWidth*0.28,
                          height: screenHeight*0.04,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple.withOpacity(0.3),
                          ),
                          child: Text("LECTURES", style: GoogleFonts.roboto(color: Colors.purple, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        setState(() {
                          _color = Colors.green; // This change Container color
                        });

                      },
                      child: Container(
                        width: screenWidth*0.28,
                        height: screenHeight*0.04,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Text("ADMIN TASK", style: GoogleFonts.roboto(color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),

              Spacer(),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: _color,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("Create Task", style: GoogleFonts.roboto(fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal)),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
