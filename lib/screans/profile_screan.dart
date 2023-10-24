import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_color.dart';

class ProfileScrean extends StatelessWidget {
  const ProfileScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sacffoldBG,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 90,
                backgroundColor: AppColors.grey,
                child: Icon(Icons.person_2_outlined,
                    color: AppColors.sacffoldBG, size: 100),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    child: Icon(Icons.camera_alt),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Divider(
            endIndent: 10,
            indent: 10,
            color: AppColors.lomanda,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: AppColors.grey),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: double.infinity,
            child: Text(
              'Mohamed Elhussieny',
              style: TextStyle(
                  color: AppColors.lomanda,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
