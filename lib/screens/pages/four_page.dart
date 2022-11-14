import 'package:flutter/material.dart';
import 'package:ui_test/constants/strings.dart';
import 'package:ui_test/constants/text_stytle.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fourth-image.png"),
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
            const Text("ANALIZA", style: appTagTextStyle,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(thirdTextTag,textAlign: TextAlign.center,style: appDescriptionStyle,),
            ),
          ],
        ),
      ),
    );
  }
}