



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Src_candidate_page.dart';
import 'atlantic_hall_candidate_page.dart';
import 'oguaa_hall_candidate_page.dart';

class ViewCandidatesPage extends StatefulWidget {


  const ViewCandidatesPage({super.key});

  @override
  State<ViewCandidatesPage> createState() => _ViewCandidatesPageState();
}

class _ViewCandidatesPageState extends State<ViewCandidatesPage> {

  /// List of Tab Bar Item
  List<String> items = [
    "SRC",
    "Oguaa Hall",
    "Atlantic Hall",
    "Adehye Hall",
    "Casford Hall",
    "SRC Hall",
    "Superannuation Hall",
    "Valco Hall",
    "Kwame Nkrumah Hall",




    // "Post",
    // "Activity",
    // "Setting",
    // "Profile",
  ];



  int current = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    /// List of body icon
    List<Widget> pages = [
      SrcCandidatePage(),
      OguaaHallCandidatePage(),
      AtlanticHallCandidatePage(),
      SrcCandidatePage(),
      OguaaHallCandidatePage(),
      AtlanticHallCandidatePage(),
      SrcCandidatePage(),
      OguaaHallCandidatePage(),
      AtlanticHallCandidatePage(),


      // Icons.explore,
      // Icons.search,
      // Icons.feed,
      // Icons.post_add,
      // Icons.local_activity,
      // Icons.settings,
      // Icons.person
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      /// APPBAR

      body: Padding(
        padding: const EdgeInsets.only(top:50.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back))
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                child: Text("Browse", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              /// CUSTOM TABBAR
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              margin: const EdgeInsets.all(5),
                              // width: 100,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              height: 30,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Color.fromRGBO(0, 98, 225, 1)
                                    : Colors.grey.withOpacity(0.3),
                                borderRadius: current == index
                                    ? BorderRadius.circular(15)
                                    : BorderRadius.circular(10),
                                // border: current == index
                                //     ? Border.all(
                                //     color: Color.fromRGBO(0, 98, 225, 1), width: 2)
                                //     : Border.all(
                                //     color: Color.fromRGBO(0, 98, 225, 1), width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      color: current == index
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                              visible: current == index,
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(13, 28, 82, 1),
                                    shape: BoxShape.circle),
                              ))
                        ],
                      );
                    }),
              ),

              /// MAIN BODY
              Expanded(
                child: Container(
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 20),
                    // width: double.infinity,
                    // height: 550,
                    child: pages[current]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}