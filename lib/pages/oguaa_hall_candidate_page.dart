import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OguaaHallCandidatePage extends StatefulWidget {
  const OguaaHallCandidatePage({super.key});

  @override
  State<OguaaHallCandidatePage> createState() => _OguaaHallCandidatePageState();
}

class _OguaaHallCandidatePageState extends State<OguaaHallCandidatePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return  Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.red,
          child: ListView(
            itemExtent: 250,
            padding: EdgeInsets.zero,

            children: [

              // Tile 1
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    // height: 100,
                    // color: Colors.red,

                  ),



                  // Image

                  Positioned(
                    right: 0,
                    child: Container(
                      width: screenWidth*0.52,
                      height: 230,
                      child: ClipRRect(
                        child: Image.asset('assets/Candidate5.jpg', fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      ),
                    ),
                  ),





                  // Labelling
                  Positioned(
                    left: 0,
                    top: 26,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),

                      child: Container(
                        alignment: Alignment.center,
                        width: screenWidth*0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Team Mykel", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(height: 8,),
                              Text("Micheal Danquah & Agartha Aduse-Poku", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14),),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.grey,size: 20,),
                                  SizedBox(width: 8,),
                                  Text("(4)", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.yellow),),
                                ],
                              ),

                              SizedBox(height: 22,),

                              Row(
                                children: [
                                  Text("1023", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),),

                                  SizedBox(width: 6,),
                                  Text("Views", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, color: Colors.black,size: 18,),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),


              // Tile 2
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    // height: 100,
                    // color: Colors.red,

                  ),



                  // Image

                  Positioned(
                    right: 0,
                    child: Container(
                      width: screenWidth*0.52,
                      height: 230,
                      child: ClipRRect(
                        child: Image.asset('assets/Candidate4.jpg', fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      ),
                    ),
                  ),





                  // Labelling
                  Positioned(
                    left: 0,
                    top: 26,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),

                      child: Container(
                        alignment: Alignment.center,
                        width: screenWidth*0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ESTY", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(height: 8,),
                              Text("Esther Acquah Benson", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14),),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.grey,size: 20,),
                                  SizedBox(width: 8,),
                                  Text("(4)", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.yellow),),
                                ],
                              ),

                              SizedBox(height: 22,),

                              Row(
                                children: [
                                  Text("1023", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),),

                                  SizedBox(width: 6,),
                                  Text("Views", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, color: Colors.black,size: 18,),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),


              // Tile 3
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    // height: 100,
                    // color: Colors.red,

                  ),



                  // Image

                  Positioned(
                    right: 0,
                    child: Container(
                      width: screenWidth*0.52,
                      height: 230,
                      child: ClipRRect(
                        child: Image.asset('assets/Candidate3.jpg', fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      ),
                    ),
                  ),





                  // Labelling
                  Positioned(
                    left: 0,
                    top: 26,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),

                      child: Container(
                        alignment: Alignment.center,
                        width: screenWidth*0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Team JAK", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(height: 8,),
                              Text("Johua Addai Kwaku & Magdamene Attah Bakobie", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14),),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.grey,size: 20,),
                                  SizedBox(width: 8,),
                                  Text("(4)", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.yellow),),
                                ],
                              ),

                              SizedBox(height: 15,),

                              Row(
                                children: [
                                  Text("1023", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),),

                                  SizedBox(width: 6,),
                                  Text("Views", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, color: Colors.black,size: 18,),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),


              // Tile 4
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    // height: 100,
                    // color: Colors.red,

                  ),



                  // Image

                  Positioned(
                    right: 0,
                    child: Container(
                      width: screenWidth*0.52,
                      height: 230,
                      child: ClipRRect(
                        child: Image.asset('assets/Candidate2.jpg', fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      ),
                    ),
                  ),





                  // Labelling
                  Positioned(
                    left: 0,
                    top: 26,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),

                      child: Container(
                        alignment: Alignment.center,
                        width: screenWidth*0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("The Gover...", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(height: 8,),
                              Text("Desmond Eshun", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14),),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  SizedBox(width: 8,),
                                  Text("(5)", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.yellow),),
                                ],
                              ),

                              SizedBox(height: 22,),

                              Row(
                                children: [
                                  Text("1023", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),),

                                  SizedBox(width: 6,),
                                  Text("Views", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, color: Colors.black,size: 18,),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              // Tile 5
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    // height: 100,
                    // color: Colors.red,

                  ),



                  // Image

                  Positioned(
                    right: 0,
                    child: Container(

                      width: screenWidth*0.52,
                      height: 230,
                      child: ClipRRect(
                        child: Image.asset('assets/Candidate1.jpg', fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      ),

                    ),
                  ),





                  // Labelling
                  Positioned(
                    left: 0,
                    top: 26,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),

                      child: Container(
                        alignment: Alignment.center,
                        width: screenWidth*0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Team Dep...", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(height: 8,),
                              Text("Emmanuel Obuor & Agartha Aduse-Poku", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14),),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.yellow,size: 20,),
                                  Icon(Icons.star, color: Colors.grey,size: 20,),
                                  SizedBox(width: 8,),
                                  Text("(4)", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.yellow),),
                                ],
                              ),

                              SizedBox(height: 22,),

                              Row(
                                children: [
                                  Text("1023", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),),

                                  SizedBox(width: 6,),
                                  Text("Views", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, color: Colors.black,size: 18,),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}
