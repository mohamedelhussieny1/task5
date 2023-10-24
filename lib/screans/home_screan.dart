import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_color.dart';
import 'package:flutter_application_5/image.dart';
import 'package:flutter_application_5/widget/category.dart';
import 'package:flutter_application_5/widget/paige_view.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sacffoldBG,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello Mohamed',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 19)),
                      Text(
                        'Have a nice day',
                        style: TextStyle(color: AppColors.grey, fontSize: 13),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.grey,
                    child: Icon(Icons.person, color: AppColors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CarouselImgae(),
              Ctegores(),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recommended Article',
                      style: TextStyle(fontSize: 18, color: AppColors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildListView(),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

buildListView() {
  return Container(
      height: 600,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              child: Row(children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'assets/images/image 2.jpg',
                      width: 200,
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Man City Stay Perfect despite Rodri Red against Forest',
                      style: TextStyle(color: AppColors.white, fontSize: 14),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.menu,
                          color: AppColors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Read',
                          style: TextStyle(color: AppColors.white),
                        )
                      ],
                    )
                  ],
                ))
              ]),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: AppColors.containerBG,
                  borderRadius: BorderRadius.circular(20)),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 40),
          itemCount: 4));
}
