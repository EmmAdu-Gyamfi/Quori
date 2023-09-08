import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFeedPage extends StatefulWidget {
  const AddFeedPage({super.key});

  @override
  State<AddFeedPage> createState() => _AddFeedPageState();
}

class _AddFeedPageState extends State<AddFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text("Cancel", style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.normal) )),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: 75,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("Post", style: GoogleFonts.roboto(fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal)),
                  ),
                ],
              ),

              TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                cursorColor: Colors.black,
                cursorHeight: 25,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "What's happening?"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
