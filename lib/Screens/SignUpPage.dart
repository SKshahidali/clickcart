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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'assets/backgrounds/SignIn AND Signup Onvboard.jpeg',),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcOver)
          )
          ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Clickcart Logo //
                  Image.asset(
                        'assets/logos/Logo.png',
                        height: 100,
                        width: 100,
                      ),
              //White box that contains all details //
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
                      //REGISTER TEXT //
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("SIGN UP",
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
              
                      //Full Name TextField //
                        Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: TextFormField( 
                                
                                decoration: InputDecoration(
                                  labelText: "Full Name",
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
                      //Password TextField //
              
                      Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              obscureText: true,
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
              
                      //Confirm Password TextField //
              
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
              
                          //Sign Up Button //
              
                          Padding(
                            padding: const EdgeInsets.all(16.0),
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
                          const SizedBox(height: 20,),
                          //Already Have an Account //
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an Account ? ",style: GoogleFonts.roboto(fontSize: 16),),
                                GestureDetector(
                                  onTap: () => Get.to(SigninPage()),
                                  child: Text("Sign In ",style: GoogleFonts.roboto(fontSize: 16,color: primarycolor,fontWeight: FontWeight.bold))),
                            
                            ],),
                          )
                    ],
                  ),
                ),
              ),
                ],
              ),
            ),
              
            
          ),
        ),
          
      ),
    );
  }
}
