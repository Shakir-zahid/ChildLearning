import 'package:child_learning_app/Utils/AppColors.dart';
import 'package:child_learning_app/Utils/AppTextStyles.dart';
import 'package:child_learning_app/Widgets/Appbars.dart';
import 'package:flutter/material.dart';


class AlphabetPage extends StatelessWidget {
  String title;
  AlphabetPage(this.title);
  List<String> alphabetList = ['A','B','C','D'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: displayAppBar(title, context),
                      body: PageView.builder(
        itemCount: alphabetList.length,
itemBuilder: (context,index){
  return Container(
    color: AppColors.containerColor,
child:Center(child: Text(alphabetList[index],style: TextStyles.appBarTitle.copyWith(fontSize:100),),)
  );
},        
      ),
          ),
    );
  }
}