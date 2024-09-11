
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
    body: Stack(children: [
      Image.asset('assets/images/background.png'),
      Center(
        child:  SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 42,),
            Image.asset('assets/images/logo.png', height: 22,),
            const SizedBox(height: 72,),
            RichText(
              text: TextSpan(
                  text: "Helping you\nto keep ",
                  style: GoogleFonts.manrope(
                      fontSize: 24,
                      color: const Color(0xFFDEE1FE),
                      letterSpacing: 3.5 / 100,
                      height: 152/100
                  ),
                  children: const [
                    TextSpan(text: "your bestie",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900)
                    ),
                    TextSpan(text: "\nstay healthy")
                  ]),
              textAlign: TextAlign.center,

            )
          ],
        )),
      )
    ],
    ),
    );
  }
}
