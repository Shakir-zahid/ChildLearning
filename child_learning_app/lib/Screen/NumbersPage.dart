import 'package:child_learning_app/Utils/AppColors.dart';
import 'package:child_learning_app/Utils/AppTextStyles.dart';
import 'package:child_learning_app/Widgets/Appbars.dart';
import 'package:flutter/material.dart';


class NumbersPage extends StatelessWidget {
  String title;
  NumbersPage(this.title);
 @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: displayAppBar(title, context),
                      body: PageView.builder(
        itemCount: 10,
itemBuilder: (context,index){
  return Container(
    color: AppColors.containerColor,
child:Center(child: Text(index.toString(),style: TextStyles.appBarTitle.copyWith(fontSize:100),),)
  );
},        
      ),
          ),
    );
  }
}