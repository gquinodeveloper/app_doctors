import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(
                "https://reqres.in/img/faces/8-image.jpg",
              ),
            ),
          ),
        ),
        SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mahmudul",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppTheme.title,
              ),
            ),
            Text(
              "Find your doctor here",
              style: TextStyle(color: AppTheme.subtitle),
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Icon(
            Icons.calendar_today,
            color: Color.fromRGBO(71, 152, 128, 1.0),
          ),
        ),
      ],
    );
  }
}
