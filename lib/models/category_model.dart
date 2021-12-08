import 'package:flutter/material.dart';

class CategoryModel {
  CategoryModel({
    this.icon,
    this.title,
    this.subTitle,
    this.description,
    this.color,
  });

  IconData? icon;
  String? title;
  String? subTitle;
  String? description;
  Color? color;
}

List<CategoryModel> categories = [
  CategoryModel(
    icon: Icons.ac_unit,
    title: "Cardio",
    subTitle: "27 Doctors",
    color: Color.fromRGBO(71, 152, 128, 1.0),
  ),
  CategoryModel(
    icon: Icons.favorite,
    title: "Heart Issue",
    subTitle: "43 Doctors",
    color: Color.fromRGBO(87, 87, 211, 1.0),
  ),
  CategoryModel(
    icon: Icons.ac_unit,
    title: "Dental Care",
    subTitle: "19 Doctors",
    color: Color.fromRGBO(243, 171, 125, 1.0),
  ),
  CategoryModel(
    icon: Icons.ac_unit,
    title: "Phycolgy",
    subTitle: "07 Doctors",
    color: Color.fromRGBO(154, 124, 229, 1.0),
  ),
];

List<CategoryModel> cards = [
  CategoryModel(
    title: "Cardio Issues?",
    description:
        "DoctorPoint is a doctor consultant service app. Get an appointment to ask a question.",
  ),
  CategoryModel(
    title: "Dental Care",
    description:
        "DoctorPoint is a doctor consultant service app. Get an appointment to ask a question.",
  ),
  CategoryModel(
    title: "Phycolgy",
    description:
        "DoctorPoint is a doctor consultant service app. Get an appointment to ask a question.",
  ),
];
