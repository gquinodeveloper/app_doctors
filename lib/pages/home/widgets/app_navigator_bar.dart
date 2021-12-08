import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppNavigatorBar extends StatelessWidget {
  const AppNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.maps_home_work_rounded,
            color: Color.fromRGBO(71, 152, 128, 1.0),
          ),
          Icon(
            Icons.notifications,
            color: AppTheme.title,
          ),
          Icon(
            Icons.search,
            color: AppTheme.title,
          ),
          Icon(
            Icons.note_add,
            color: AppTheme.title,
          ),
          Icon(
            Icons.dashboard_customize_sharp,
            color: AppTheme.title,
          ),
        ],
      ),
    );
  }
}
