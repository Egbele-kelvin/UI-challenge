import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_test/constants/colors.dart';
import 'package:ui_test/screens/pages/first_page.dart';
import 'package:ui_test/screens/pages/four_page.dart';
import 'package:ui_test/screens/pages/second_page.dart';
import 'package:ui_test/screens/pages/third_page.dart';

class OnboardingHome extends StatefulWidget {
  const OnboardingHome({super.key});

  @override
  State<OnboardingHome> createState() => _OnboardingHomeState();
}

class _OnboardingHomeState extends State<OnboardingHome> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _controller,
                  physics: const ClampingScrollPhysics(),
                  children: const [
                      FirstPage(),
                      SecondPage(),
                      ThirdPage(),
                      FourthPage(),
                  ],
                ),
              ),
            ],
          ),
          // dot indicators
          Positioned(
            bottom: 120,
            left: 150,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect:  CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color:  Colors.black.withOpacity(0.1),
                  dotBorder: const DotBorder(
                    width: 2,
                    color:kPrimaryColor,
                    ),
                ), 
                dotDecoration: DotDecoration(
                   borderRadius: BorderRadius.circular(2),
                  color: const Color(0xff686968),
                  dotBorder:  DotBorder.none,
                )
                
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 13,
            child: Container(
              width: 366,
              height: 54,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(27)
              ),
              child: const Center(
                child: Text("iniciar sesión",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.normal
                ),),
              ),
            )
          )
        ],
      ),
    );
  }
}