import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quori/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  // create variables
  late AnimationController animationController;

  // late Animation<Offset> animationTranslate;
  late Animation<Offset> animationResize;
  late Animation<double> animationRotate;



  Offset containerSizeBegin = const Offset(300, 300);
  Offset containerSizeEnd = const Offset(250, 250);

  Offset containerPositionBegin = Offset.zero;
  Offset containerPositionEnd = const Offset(0, -200);// move the container upward 200 logical pixel

  double containerAngleBegin = 0;
  double containerAngleEnd = 6.28319;// // 6.28319 radians equals 360 degrees



  @override
  void initState() {
    super.initState();
    // create an AnimationController that manages all of the Animations
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),// animation should last for 1.5 second
    );
    animationController.addStatusListener((status) {
      // animate container to original size, angle & position
      if (status == AnimationStatus.completed) {
        // animationController.reverse();
      }
    });

    // translate tween
    // animationTranslate = Tween<Offset>(
    //   begin: containerPositionBegin,
    //   end: containerPositionEnd,
    // ).animate(animationController);
    // resize tween
    animationResize = Tween<Offset>(
      begin: containerSizeBegin,
      end: containerSizeEnd,
    ).animate(animationController);
    // rotation tween
    animationRotate = Tween<double>(
      begin: containerAngleBegin,
      end: containerAngleEnd,
    ).animate(animationController);

    Future.delayed(Duration(seconds: 2), (){
      animationController.forward();

    });

  }

  @override
  Widget build(BuildContext context) {
    final fadeController = AnimationController(vsync: this, duration: Duration(seconds: 1));

    final fadeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(fadeController);
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 66, 53, 1),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          // animated object ---------------------------------------------------
          AnimatedBuilder(
            animation: animationController,
            child: _createSquareCenter(
              width: containerSizeBegin.dx,
              height: containerSizeBegin.dy,
            ),
            builder: (BuildContext context, Widget? child) {
              // resize the square
              var animatedChild = _createSquareCenter(
                width: animationResize.value.dx,
                height: animationResize.value.dy,
              );
              // translate the square

              // animatedChild = Transform.translate(
              //   child: animatedChild,
              //   offset: animationTranslate.value,
              // );

              // rotate the square around its center
              animatedChild = Transform.rotate(
                origin: Offset.zero,
                angle: animationRotate.value,
                child: animatedChild,
              );


              Future.delayed(Duration(seconds: 2), (){
                fadeController.forward();
              });

              Future.delayed(Duration(seconds: 4), (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage() ));
              });





              return animatedChild;
            },
          ),

          Positioned(
            bottom: screenHeight*0.35,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: Text("Quori", style: GoogleFonts.dmSerifDisplay(color: Colors.white, fontSize: 45),),
            ),
          ),

          // user input --------------------------------------------------------

        ],
      ),
    );
  }

  Widget _createSquareCenter({required double width, required double height})  {
    return
      Center(
        child: Container(
          // color: Colors.grey,
          width: width,
          height: height,
          child: Image.asset("assets/appLogo.png"),
        ),
      );
  }
}
