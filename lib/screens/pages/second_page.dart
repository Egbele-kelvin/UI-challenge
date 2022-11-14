import 'package:flutter/material.dart';
import 'package:ui_test/constants/strings.dart';
import 'package:ui_test/constants/text_stytle.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/second-Image.png"),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(
                height: size.height * 0.12,
              ),
            const Text("#MOVEYOURMIND",style: appHashTagStyle,
            ),
            SizedBox(
                height: size.height * 0.47,
              ),
            const Text("CONECTA", style: appTagTextStyle,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(firstTextTag,textAlign: TextAlign.center,style: appDescriptionStyle,),
            ),
          ],
        ),
      ),
    );
  }
}