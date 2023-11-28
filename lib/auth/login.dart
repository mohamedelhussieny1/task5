import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_color.dart';
import 'package:flutter_application_5/core/app_local_storage.dart';
import 'package:flutter_application_5/screans/home_screan.dart';
import 'package:flutter_application_5/home_view.dart';
import 'package:flutter_application_5/image.dart';
import 'package:image_picker/image_picker.dart';
String? imagePath;
String name ='';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppLocal.cashData(AppLocal.imageKey, name).then((value) {
          setState(() {
            imagePath = value;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.sacffoldBG,
          actions: [
            TextButton(
                onPressed: () {
                  if(imagePath != null && name.isNotEmpty){
                    AppLocal.cashData(AppLocal.nameKey, name);
                    AppLocal.cashBool(AppLocal.isupload, true);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ));
                  }else if(imagePath == null && name.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Ubload Image and Enter Your Name '),),);
                  }else if(imagePath == null ){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Ubload Image'),),);
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Enter Your Name'),),);

                  }
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
              radius: 70,
              backgroundImage: (imagePath != null)
                  ? FileImage(File(imagePath!)) as ImageProvider
                  : AssetImage(
                      'assets/images/logo.png',
                    ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                getImageFromCamera();
              },
              child: Container(
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  getImageFromGalarey();
                },
                child: Container(
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
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                )),
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
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
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

  getImageFromCamera() async {
    final imagePicker =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (imagePicker != null) {
      AppLocal.cashData(AppLocal.imageKey,name);
      setState(() {
        imagePath = imagePicker.path;
      });
    }
  }

  getImageFromGalarey() async {
    final imagePicker =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imagePicker != null) {
      AppLocal.cashData(AppLocal.imageKey,name);
      setState(() {
        imagePath = imagePicker.path;
      });
    }
  }
}
