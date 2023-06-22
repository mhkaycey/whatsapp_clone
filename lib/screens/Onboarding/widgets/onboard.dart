import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardBuild extends StatelessWidget {
  final String mainTitle;
  const OnboardBuild({super.key, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100, bottom: 70),
      child: Column(
        children: [
          Text(
            mainTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.white,
              fontSize: 30.sp,
            ),
          ),
          Container(
            height: 60,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/whatsapp.png"))),
          ),
          const Spacer(),
          Text(
            "Meta",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              //  fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
