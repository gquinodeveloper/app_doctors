import 'package:app_doctor_consulting/global/content_title.dart';
import 'package:app_doctor_consulting/pages/home/widgets/app_navigator_bar.dart';
import 'package:app_doctor_consulting/pages/home/widgets/cards.dart';
import 'package:app_doctor_consulting/pages/home/widgets/doctors.dart';
import 'package:app_doctor_consulting/pages/home/widgets/header.dart';
import 'package:app_doctor_consulting/pages/home/widgets/search.dart';
import 'package:app_doctor_consulting/pages/home/widgets/specialist.dart';
import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Search(),
              ContentTitle(title: "Specialist"),
              Specialist(),
              Cards(),
              ContentTitle(title: "Top doctors"),
              Doctors(),
              AppNavigatorBar(),
            ],
          ),
        ),
      ),
    );
  }
}
