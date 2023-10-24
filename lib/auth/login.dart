import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_color.dart';
import 'package:flutter_application_5/home_screan.dart';
import 'package:flutter_application_5/home_view.dart';
import 'package:flutter_application_5/image.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.sacffoldBG,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return HomeView();
                    },
                  ));
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: AppColors.lomanda,
                    fontSize: 16,
                  ),
                )),
          ]),
      backgroundColor: AppColors.sacffoldBG,
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: AppColors.grey,
              child: Icon(Icons.person_2_outlined,
                  color: AppColors.sacffoldBG, size: 100),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 240,
              child: Center(
                  child: Text(
                'Upload from Camera',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: 220,
              child: Center(
                  child: Text(
                'Upload from Gallery',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              endIndent: 20,
              indent: 20,
              color: AppColors.lomanda,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: AppColors.white),
                      hintText: 'Enter your User Name',
                      filled: true,
                      fillColor: AppColors.grey,
                      prefixIcon: Icon(Icons.person,
                          color: AppColors.lomanda, size: 30),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ))),
            ),
          ]),
        ),
      ),
    );
  }
}
