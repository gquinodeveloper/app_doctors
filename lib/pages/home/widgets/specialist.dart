import 'package:app_doctor_consulting/models/category_model.dart';
import 'package:flutter/material.dart';

class Specialist extends StatelessWidget {
  const Specialist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100.0,
            height: 120.0,
            margin: EdgeInsets.only(right: 10.0),
            padding: EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              color: categories[index].color,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  categories[index].icon,
                  color: Colors.white,
                  size: 35.0,
                ),
                Text(
                  "${categories[index].title}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "${categories[index].subTitle}",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
