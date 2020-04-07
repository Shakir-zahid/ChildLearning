import 'package:child_learning_app/Utils/AppColors.dart';
import 'package:child_learning_app/Utils/AppTextStyles.dart';
import 'package:child_learning_app/Widgets/Appbars.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: displayAppBar('Learning',context),
                      body: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        displayContainer('Alphabets',openAlphabetPage),
                        displayContainer('Numbers',openNumbersPage),
                        ],
        
      ),
          ),
    );
  }
  Widget displayContainer(String title,VoidCallback onTap){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: onTap,
                              child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical:10),
        alignment: Alignment.center,
        color: AppColors.containerColor,
        child: Text(title,style:TextStyles.appBarTitle.copyWith(fontSize:25)),
        ),
              ),
      ),
    );
  }

  void openAlphabetPage(){
    Navigator.pushNamed(context, 'alphabetPage',arguments: 'Alphabets');
  }
  void openNumbersPage(){
    Navigator.pushNamed(context, 'numberPage',arguments: 'Numbers');
  }
}