import 'package:child_learning_app/Utils/AppTextStyles.dart';
import 'package:child_learning_app/Utils/AppColors.dart';
import 'package:flutter/material.dart';



Widget displayAppBar(String title,BuildContext context){
  return AppBar(
    title: Text(title,style:TextStyles.appBarTitle),
    backgroundColor: AppColors.appBarBackground,
    automaticallyImplyLeading: false,

  );
}