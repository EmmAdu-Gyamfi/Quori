import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidateOneBioPage extends StatefulWidget {
  const CandidateOneBioPage({super.key});

  @override
  State<CandidateOneBioPage> createState() => _CandidateOneBioPageState();
}

class _CandidateOneBioPageState extends State<CandidateOneBioPage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 16),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, size: 26,))
              ),

              Row(children: [
                Container(
                  height: screenHeight*0.28,
                  width: screenWidth*0.5,
                  // color: Colors.red,
                  child: ClipRRect(
                    child: Image.asset("assets/Candidate1.jpg", fit: BoxFit.fill,),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  height: screenHeight*0.28,
                  width: screenWidth*0.44,
                  // color: Colors.red,
                  // alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Team \nDependable", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 25),),
                      SizedBox(height: 8,),
                      Text("Emmanuel Obuor & Agartha Aduse-Poku", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 16),),
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
                    ],
                  ),
                )
              ],),

              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 50),
                child: Row(
                  children: [
                    Icon(Icons.list),
                    SizedBox(width: 6,),
                    Text("Reviews", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 16),),
                    SizedBox(width: 50,),


                    Icon(Icons.favorite_border),
                    SizedBox(width: 6,),
                    Text("Like", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 16),),
                    SizedBox(width: 50,),

                    Icon(Icons.share, size: 20,),
                    SizedBox(width: 6,),
                    Text("Share", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 16),),

                  ],
                ),
              ),

              SizedBox(height: 8,),

              Divider(
                indent: 50,
                thickness: 0.8,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text("Bio", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 16),
                child: Container(child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.", style: GoogleFonts.roboto(fontWeight: FontWeight.normal, fontSize: 16))),
              ),

              Spacer(),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 125,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 98, 225, 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("Read More", style: GoogleFonts.roboto(fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal)),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
