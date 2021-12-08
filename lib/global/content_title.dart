import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  ContentTitle({
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        title,
        style: TextStyle(
          color: AppTheme.title,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
