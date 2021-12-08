import 'package:app_doctor_consulting/models/user_model.dart';
import 'package:app_doctor_consulting/providers/user_provider.dart';
import 'package:app_doctor_consulting/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  Doctors({Key? key}) : super(key: key);

  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  UserProvider _apiProvider = UserProvider();
  List<UserModel> users = [];

  @override
  void initState() {
    loadUsers();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  loadUsers() async {
    print("Mande la peticion por un hilo");
    users = await _apiProvider.getUsers();
    print("Obtengo resultado de hilo");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("Estoy dibujando el arbol de widget");
    return Container(
      width: double.infinity,
      height: 180.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Container(
            width: 130.0,
            height: 180.0,
            margin: EdgeInsets.only(right: 10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: NetworkImage("${users[index].avatar}")),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "${users[index].firstName}",
                  style: TextStyle(
                    color: AppTheme.title,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${users[index].lastName}",
                  style: TextStyle(
                    color: AppTheme.subtitle,
                    fontSize: 12.0,
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
