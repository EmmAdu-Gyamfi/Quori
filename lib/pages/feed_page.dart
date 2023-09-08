import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quori/pages/add_feed_page.dart';
import 'package:quori/pages/profile_page.dart';
import 'package:quori/pages/view_candidates_page.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(0, 33, 114, 1),
        onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => AddFeedPage() ));


        },
        child: Icon(Icons.add_comment_rounded),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.red,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfilePage() ));

                        },
                        child: Icon(Icons.person,size: 25,color: Colors.grey,)),
                    Spacer(),
                    Icon(Icons.search, size: 25,color: Colors.grey,),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("Feed", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 30),),
                ),

                Row(
                  children: [
                    Spacer(),
                    Text("Trending🔥", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),)
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: screenHeight*0.23,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        // color: Colors.red
                      ),
                      child: Stack(
                        children: [
                          Center(
                              child: SizedBox(width: 220,
                                  child: Image.asset("assets/uccLogo.png", fit: BoxFit.cover,)
                              )
                          ),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                              child: Container(
                                height: screenHeight*0.23,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    color: Colors.white.withOpacity(0.2)
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                    width: 35,
                                    height: 35,
                                    // color: Colors.red,
                                    child: Image.asset("assets/uccLogo.png", fit: BoxFit.cover,)
                                ),
                                SizedBox(width: 8,),
                                Text("UNIVERSITY OF CAPE COAST", style: GoogleFonts.roboto(fontSize: 14, color: Colors.black45),)
                              ],
                            ),
                          ),
                          Positioned(
                              top: 55,
                              left: 12,
                              child: Text("Upcoming Elections", style: GoogleFonts.roboto(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),)
                          ),

                          Positioned(
                              top: 90,
                              left: 12,
                              right: 12,
                              child: Container(
                                // width: 350,
                                // color: Colors.red,
                                child: Text("Your vote matters. Participate in shaping the future of our university. Exercise your right to vote and have a say in campus leadership.",
                                  style: GoogleFonts.roboto(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                                ),
                              )
                          ),

                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ViewCandidatesPage() ));

                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 125,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 98, 225, 1),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Text("View Candidates", style: GoogleFonts.roboto(fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal)),
                              ),
                            ),
                          )



                        ],
                      ),
                    ),
                  ),
                ),






                //   First Feed





                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("assets/girl.jpg"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),

                      SizedBox(width: 8,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("UCC SRC PRO", style: GoogleFonts.roboto(fontSize: 16, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal)),
                              SizedBox(width: 6,),
                              Icon(Icons.verified, color: Colors.orange, size: 16,)

                            ],
                          ),
                          SizedBox(height: 5,),
                          Text("23/08/2023, 2:19 PM", style: GoogleFonts.roboto(fontSize: 12, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal)),
                        ],
                      ),

                      Spacer(),

                      Icon(Icons.more_vert_outlined, color: Colors.black, size: 18,)



                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0, top: 3),
                  child: Container(
                      width: screenWidth*0.8,
                      // color: Colors.red,
                      child: Text("prof Amoako inaugural lecture happening", style: GoogleFonts.roboto(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0, top: 12),
                  child: Row(
                    children: [

                      Icon(CupertinoIcons.heart_fill, color: Colors.red, size: 30,),
                      SizedBox(width: 8,),
                      Icon(CupertinoIcons.heart_slash, color: Colors.black54, size: 30,),
                      Spacer(),
                      Icon(Icons.share, color: Colors.black54, size: 30,)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0, top: 4),
                  child: Container(child: Text("1 like", style: GoogleFonts.roboto(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500))),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 0.2,

                ),






                //   Second Feed



                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("assets/girl.jpg"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),

                      SizedBox(width: 8,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("UCC SRC PRO", style: GoogleFonts.roboto(fontSize: 16, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal)),
                              SizedBox(width: 6,),
                              Icon(Icons.verified, color: Colors.orange, size: 16,)

                            ],
                          ),
                          SizedBox(height: 5,),
                          Text("23/08/2023, 2:19 PM", style: GoogleFonts.roboto(fontSize: 12, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal)),
                        ],
                      ),

                      Spacer(),

                      Icon(Icons.more_vert_outlined, color: Colors.black, size: 18,)



                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0, top: 3),
                  child: Container(
                      width: screenWidth*0.8,
                      // color: Colors.red,
                      child: Text("🚨*ATTENTION UCC*🚨 \n __________________\nAGOO 🗣️🗣️ UCC, get ready for something big.👌 Considering our contemporary world with clear introspection, a 21st century University Student have no excuse to be oblivious to the term ENTERPRENUERSHIP and it's outweighing panacea significance to unemployment and wealth creation.",
                        style: GoogleFonts.roboto(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0, top: 12),
                  child: Row(
                    children: [

                      Icon(CupertinoIcons.heart_fill, color: Colors.red, size: 30,),
                      SizedBox(width: 8,),
                      Icon(CupertinoIcons.heart_slash, color: Colors.black54, size: 30,),
                      Spacer(),
                      Icon(Icons.share, color: Colors.black54, size: 30,)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:60.0, top: 4),
                  child: Container(child: Text("1 like", style: GoogleFonts.roboto(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500))),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 0.2,

                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
