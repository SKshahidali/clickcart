import 'package:clickcart/Screens/SignUpPage.dart';
import 'package:clickcart/Screens/Signinpage.dart';
import 'package:clickcart/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //The background image of the screen//
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  'assets/backgrounds/SignIn AND Signup Onvboard.jpeg'),
              fit: BoxFit.cover,
            )),
          ),
          //The container is used to darken the  image //
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logos/Logo.png',
                  height: 150,
                  width: 150,
                ),

                const SizedBox(height: 100,),

                //Sign In Button //
                GestureDetector(
                  onTap: () => Get.to(SigninPage()),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0XD9D9D9).withOpacity(0.2),
                      border: Border.all(width: 1.5,color:primarycolor),
                    ),
                    child: Center(
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.roboto(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ), //Google font//
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                //Sign Up Button //

                GestureDetector(
                  onTap: () => Get.to(SignUpPage()),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0XD9D9D9).withOpacity(0.2),
                      border: Border.all(width: 1.5,color:primarycolor),
                    ),
                    child: Center(
                      child: Text(
                        "REGISTER",
                        style: GoogleFonts.roboto(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ), //Google font//
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
