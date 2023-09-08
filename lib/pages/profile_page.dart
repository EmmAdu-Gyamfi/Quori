import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
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
                            child: Icon(Icons.arrow_back, size: 26,)),
                    ),
                    SizedBox(width: 8,),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text("Feed", style: GoogleFonts.roboto(fontSize: 18),)),

                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: PopupMenuButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)

                        ),
                        icon: Icon(Icons.more_vert_outlined, size: 20,color: Colors.black,),
                        itemBuilder: ( context) {
                          return <PopupMenuEntry>[
                            PopupMenuItem(
                                child: Container(

                                  // height: 100,
                                  // width: 100,
                                  // color: Colors.grey,
                                  child: Column(
                                    children:<Widget>[
                                      Text("Logout", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 15,),),
                                      Divider(thickness: 1),
                                      InkWell(

                                        child: Container(child: Text("Delete Account", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.red),)),
                                      ),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  ),
                                )
                            )

                          ];
                        },),
                    )
                  ],
                ),




                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text("My Profile", style: GoogleFonts.roboto(fontSize: 27, fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
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
                              Text("UCC SRC PRO", style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text("Building the people's SRC 💫", style: GoogleFonts.roboto(fontSize: 12, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal)),
                          SizedBox(height: 3,),
                          Text("Stonebwoy@gmail.com", style: GoogleFonts.roboto(fontSize: 12, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.normal)),
                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("Posts", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),),
                ),

                //   First Feed




                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30, right: 16),
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
                  padding: const EdgeInsets.only(left:90.0, top: 3),
                  child: Container(
                      width: screenWidth*0.8,
                      // color: Colors.red,
                      child: Text("prof Amoako inaugural lecture happening", style: GoogleFonts.roboto(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:90.0, top: 12, right: 16),
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
                  padding: const EdgeInsets.only(left:90.0, top: 4),
                  child: Container(child: Text("1 like", style: GoogleFonts.roboto(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500))),
                ),

                Divider(
                  color: Colors.black,
                  // thickness: 0.2,

                ),






                //   Second Feed



                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 30, right: 16),
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
                  padding: const EdgeInsets.only(left:90.0, top: 3, right: 8),
                  child: Container(
                      width: screenWidth*0.8,
                      // color: Colors.red,
                      child: Text("🚨*ATTENTION UCC*🚨 \n __________________\nAGOO 🗣️🗣️ UCC, get ready for something big.👌 Considering our contemporary world with clear introspection, a 21st century University Student have no excuse to be oblivious to the term ENTERPRENUERSHIP and it's outweighing panacea significance to unemployment and wealth creation.",
                        style: GoogleFonts.roboto(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w800),)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:90.0, top: 12, right: 16),
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
                  padding: const EdgeInsets.only(left:90.0, top: 4),
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
