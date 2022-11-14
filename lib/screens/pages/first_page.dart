import 'package:flutter/material.dart';
import 'package:ui_test/constants/text_stytle.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/first-image.png"),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(
                height: size.height * 0.24,
              ),
              Image.asset("assets/app-logo.png"),
               SizedBox(
                height: size.height * 0.24,
              ),
              const Text("COMENZÁ A VIVIR TU",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontStyle: FontStyle.italic
              ),),
               SizedBox(
                height: size.height * 0.01,
              ),
              const Text("NT EXPERIENCE", style: appTagTextStyle,),
            ],
          ),
        ),
      ),
    );
  }
}