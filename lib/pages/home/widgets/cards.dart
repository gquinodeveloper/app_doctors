import 'package:app_doctor_consulting/models/category_model.dart';
import 'package:app_doctor_consulting/models/user_model.dart';
import 'package:app_doctor_consulting/providers/user_provider.dart';
import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
      //color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            width: 250.0,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 45.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(71, 152, 128, 1.0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "\$100",
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    "${cards[index].title}",
                    style: TextStyle(
                      color: AppTheme.title,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 2.0,
                        height: 50.0,
                        color: Color.fromRGBO(71, 152, 128, 1.0),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Text(
                          "${cards[index].description}",
                          style: TextStyle(
                            color: AppTheme.subtitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                    ],
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
