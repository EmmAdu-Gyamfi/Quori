import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_chat_page.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 20),
                child: Text("Help", style: GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.bold),),
              ),

              Divider(
                height: 2,
                thickness: 1,

              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminChatPage() ));

                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 35, bottom: 8),
                  child: Row(

                    children: [
                      Container(
                        width: 50,
                        height: 100,
                        child: Image.asset("assets/uccLogo.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Admin", style: GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.bold),),
                          Text("Chat Administrator...", style: GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.normal),),
                        ],
                      ),

                      Spacer(),

                      Column(
                        children: [
                          Text("24 Aug", style: GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.normal),),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Icon(CupertinoIcons.pin_fill, size: 20, color: Colors.black45,),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),

              Divider(
                height: 2,
                thickness: 1,
              ),


              Spacer(),

              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 35),
                child: Text("Contact Info", style: GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 35),
                child: Text("The Registrar, University of Cape Coast, Cape Coast, Ghana.", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.normal),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 35),
                child: Text("+233(03321)32440,", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 2, left: 35),
                child: Text("+233(03321)32480-9,", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 35, bottom: 30),
                child: Text("registrar@ucc.edu.gh", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.normal, color: Color.fromRGBO(0, 33, 114, 1)),),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
