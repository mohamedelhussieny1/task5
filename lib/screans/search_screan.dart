import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_color.dart';

class SearchScrean extends StatelessWidget {
  const SearchScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sacffoldBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Find your News',
                  style: TextStyle(color: AppColors.white, fontSize: 19),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: AppColors.white),
                    hintText: 'Enter your User Name',
                    filled: true,
                    fillColor: AppColors.grey,
                    prefixIcon:
                        Icon(Icons.search, color: AppColors.white, size: 30),
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
            SizedBox(
              height: 60,
            ),
            Text(
              'Total Result: 10',
              style: TextStyle(color: AppColors.white),
            ),
            SizedBox(
              height: 20,
            ),
            buildListView()
          ]),
        ),
      ),
    );
  }
}

buildListView() {
  return Expanded(
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
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemCount: 4));
}
