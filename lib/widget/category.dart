import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_color.dart';

class Ctegores extends StatefulWidget {
  const Ctegores({super.key});

  @override
  State<Ctegores> createState() => _CtegoresState();
}

class _CtegoresState extends State<Ctegores> {
  List categoryList = [
    'Science',
    'Entertainment',
    'Sports',
    'Business',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      height: 50,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return buildCategoryList(context, index);
        },
      ),
    );
  }

  buildCategoryList(
    BuildContext context,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        margin: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Colors.black.withOpacity(.80)
              : Colors.grey.withOpacity(0.40),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          categoryList[index],
          style: TextStyle(color: AppColors.white, fontSize: 15),
        )),
      ),
    );
  }
}
