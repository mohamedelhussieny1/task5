import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselImgae extends StatefulWidget {
  @override
  State<CarouselImgae> createState() => _CarouselImgaeState();
}

class _CarouselImgaeState extends State<CarouselImgae> {
  var slideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 190,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  slideIndex = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/image 2.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            right: 120,
            left: 120,
            child: Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    padding: EdgeInsets.all(index == slideIndex ? 8 : 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            index == slideIndex ? Colors.white : Colors.grey),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
