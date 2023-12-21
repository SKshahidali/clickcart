import 'package:clickcart/Screens/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import '../colors.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool Passwordvisibility = true;
  void ShowPassword() {
    setState(() {
      Passwordvisibility = !Passwordvisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/backgrounds/SignIn AND Signup Onvboard.jpeg',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.srcOver))),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //Logo //
                  Image.asset(
                          'assets/logos/Logo.png',
                          height: 150,
                          width: 150,
                        ),
                //White Container
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                        color: Backgroundcolor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Sign In Text //
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text("SIGN IN",
                                  textAlign: TextAlign.left,
                                  style:GoogleFonts.roboto(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                    ),),
                              ),
          
                              //Email TextField //
                        Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextFormField( 
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: "E-mail Address",
                                    labelStyle:GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:const BorderSide(color: Color(0xFFBDBDBD)),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFBDBDBD)),
                                      borderRadius: BorderRadius.circular(15)
                                    )
                                  ),
                                ),
                              ),
          
                              Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: TextFormField(
                                obscureText: Passwordvisibility,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: ShowPassword,
                                    child: Icon(Passwordvisibility ?UniconsLine.eye :UniconsLine.eye_slash)),
                                  labelText: "Confirm Password",
                                  labelStyle:GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFBDBDBD)),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xFFBDBDBD)),
                                    borderRadius: BorderRadius.circular(15)
                                  )
                                ),
                              ),
                            ),
          
                            //Forgot Password //
                            Text("FORGOT PASSWORD ?",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
          
                            //SIGN IN BUTTON //
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.60,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: primarycolor,
                                  borderRadius: BorderRadius.circular(13)
                                ),
                                child: Center(child: Text("SIGN IN  ",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),)),
                              ),
                            ),

                            // Dont have an Account //

                              Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Dont't have an Account ? ",style: GoogleFonts.roboto(fontSize: 16),),
                                GestureDetector(
                                  onTap: () => Get.to(SignUpPage()),
                                  child: Text("Sign Up ",style: GoogleFonts.roboto(fontSize: 16,color: primarycolor,fontWeight: FontWeight.bold))),
                            
                            ],),
                          ),

                           SizedBox(height: 20,),
                      ],
                      ),
                  ),
                ),

                const SizedBox(height: 30,),

                // Socials Login //
                           
                           Center(
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                // Google Login //
                                 Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Image.asset('assets/logos/google.png',fit: BoxFit.contain,),
                                 ),
                           
                                 SizedBox(width: 30,),
                           
                                 // Apple Login //
                                 Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Image.asset('assets/logos/apple.png',fit: BoxFit.contain,),
                                 ),
                               ],
                             ),
                           ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
