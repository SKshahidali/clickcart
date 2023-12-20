import 'package:clickcart/Screens/SignUpPage.dart';
import 'package:clickcart/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

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

          //Contents of the Screen //

          Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Positioned(
                  top: 40,
                  left: 20,
                  child: Icon(UniconsLine.angle_left_b)),
                //Logo//
                Image.asset(
                    'assets/logos/Logo.png',
                    height: 150,
                    width: 150,
                  ),
                //Container//
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  //<-----> This is the container where all textboxes are kept <----->//

                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                     color: Backgroundcolor,
                     borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      
                      children: [
                        const Padding(padding: const EdgeInsets.all(10)),
                        Text("SIGN IN",
                        textAlign: TextAlign.left,
                        style:GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                          ),),

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
                        
                      //Password Field //
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

                        Text("Forgot Password ?",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: 14),),
                        const SizedBox(height: 20,),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          height: 50,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(13)
                          ),
                          child: Center(child: Text("SIGN IN",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),)),
                        ),
                        const SizedBox(height: 20,),
                        //Already Have An Account //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an Account ? ",style: GoogleFonts.roboto(fontSize: 16),),
                            GestureDetector(
                              onTap: () => Get.to(SignUpPage()),
                              child: Text("Register Now",style: GoogleFonts.roboto(fontSize: 16,color: primarycolor,fontWeight: FontWeight.bold))),
                        
                        ],)
                      ],
                    ),
                  ),
                ),

                //<-----> Social Media Logins<-----> //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //<-----> Google Sign In <---->
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9).withOpacity(0.5)
                      ),
                      child: Image.asset('assets/logos/google.png',height: 40,width: 40,),
                    ),

                     //<-----> Facebook Sign In <---->
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9).withOpacity(0.5)
                      ),
                      child: Image.asset('assets/logos/facebook.png', height: 30,width: 30,),
                    ),

                     //<-----> Apple Sign In <---->
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9).withOpacity(0.5)
                      ),
                      child: Image.asset('assets/logos/apple.png',height: 40,width: 40,),
                    ),
                  ],
                )
      
              ],
            ),
          )

        ],
      ),
    );
  }
}