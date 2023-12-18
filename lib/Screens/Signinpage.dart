import 'package:clickcart/colors.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              
              children: [
                //Logo//
                Image.asset(
                    'assets/logos/Logo.png',
                    height: 150,
                    width: 150,
                  ),
                //Container//
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Backgroundcolor,
                )
      
              ],
            ),
          )

        ],
      ),
    );
  }
}