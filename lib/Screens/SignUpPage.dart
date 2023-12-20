import 'dart:ffi';

import 'package:clickcart/Screens/Signinpage.dart';
import 'package:clickcart/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool Passwordvisibility = true;
void ShowPassword() {
    setState(() {
      Passwordvisibility = !Passwordvisibility;
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //Image//
            Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  'assets/backgrounds/SignIn AND Signup Onvboard.jpeg'),
              fit: BoxFit.cover,
            )),
          ),
          //Darken Rectangle//
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Logo//
                Image.asset(
                    'assets/logos/Logo.png',
                    height: 150,
                    width: 150,
                  ),
                  //<-----> The White Box Container <---->//
                  Container(
                    decoration: BoxDecoration(
                      color: Backgroundcolor,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        Text("SIGN UP",
                        textAlign: TextAlign.left,
                        style:GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                          ),),
                          const SizedBox(height: 20,),
                        TextBox(label: "Email Address"),
                        TextBox(label: "Full Name"),

                        //Password Field //
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                           
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: "Password",
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

                        //Confirm Password Field //
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            obscureText: Passwordvisibility,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: ShowPassword,
                                child: Icon(Passwordvisibility ?UniconsLine.eye :UniconsLine.eye_slash)),
                              labelText: "Password",
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

                        //<------> Register Button <----->//

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            height: 50,
                            decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(13)
                            ),
                            child: Center(child: Text("SIGN UP",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),)),
                          ),
                        ),

                        //Don't have an account //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an Account ? ",style: GoogleFonts.roboto(fontSize: 16),),
                            GestureDetector(
                              onTap: () => Get.to(SigninPage()),
                              child: Text("Sign In",style: GoogleFonts.roboto(fontSize: 16,color: primarycolor,fontWeight: FontWeight.bold))),
                        
                        ],),
                        const SizedBox(height:20 ,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ] //Stack End [] //
    )
    );
  }
  
}
//This is the Textbox to be used //
class TextBox extends StatelessWidget {
  const TextBox({
    super.key,required this.label
  });
final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField( 
                      
                      decoration: InputDecoration(
                        labelText: label,
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
                  );
  }
}