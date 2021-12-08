import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search, doctor, categories, topic...",
            style: TextStyle(color: AppTheme.subtitle),
          ),
          Icon(
            Icons.search,
            color: AppTheme.title,
          ),
        ],
      ),
    );
  }
}
