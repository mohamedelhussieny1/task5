import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_color.dart';
import 'package:flutter_application_5/image.dart';
import 'package:flutter_application_5/login.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) {
            return Login();
          },
        ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sacffoldBG,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.logo,
                width: 250,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Insight News',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'StayInfomed, Anytime, Anywhere',
              style: TextStyle(color: Colors.white54),
            )
          ]),
    );
  }
}
