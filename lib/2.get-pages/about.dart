import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget{

  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From About"),
          TextButton(
            onPressed: (){
              Get.toNamed('/');
            }, 
            child: Text("To Home")
          )
        ],
      ),
    );
  }
}