import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/auth/login.dart';
import 'package:flutter_application_5/core/app_color.dart';
import 'package:flutter_application_5/core/app_local_storage.dart';
import 'package:image_picker/image_picker.dart';
String? imagePath;
String? name;
class ProfileScrean extends StatefulWidget {
  const ProfileScrean({super.key});

  @override
  State<ProfileScrean> createState() => _ProfileScreanState();
}

class _ProfileScreanState extends State<ProfileScrean> {
  var textCon = TextEditingController();
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sacffoldBG,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FutureBuilder(
            future: AppLocal.getCashed(AppLocal.imageKey),
            builder: (context, snapshot) {
              return Stack(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundColor: AppColors.grey,
                    backgroundImage: FileImage(File(snapshot.data!)),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 15,
                                ),
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await getImageFromCamera().then((value) {
                                        Navigator.of(context).pop();
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppColors.grey),
                                      child: Text(
                                        'Ubload From Camera',
                                        style: TextStyle(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  GestureDetector(
                                    onTap: () async {
                                      await getImageFromGalarey().then((value) {
                                        Navigator.of(context).pop();
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          color: AppColors.grey),
                                      child: Text(
                                        'Ubload From Gallery',
                                        style: TextStyle(
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.camera_alt),
                        ),
                      )),
                ],
              );
            },
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
          GestureDetector(onTap: () {
            textCon.text;
          },child: Container(
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
          ),)
        ]),
      ),
    );
  }

  Future getImageFromCamera() async {
    final imagePicker =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (imagePicker != null) {
      AppLocal.cashData(AppLocal.imageKey, name!);
      setState(() {
        imagePath = imagePicker.path;
      });
    }
  }
 Future getImageFromGalarey() async {
    final imagePicker =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imagePicker != null) {
      AppLocal.cashData(AppLocal.imageKey,name!);
      setState(() {
        imagePath = imagePicker.path;
      });
    }
  }

}
