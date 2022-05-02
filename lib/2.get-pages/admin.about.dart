import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminAbout extends StatelessWidget{
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From Admin About"),
          TextButton(
            onPressed: (){
              Get.toNamed('/admin/dashboard');
            }, 
            child: Text("To Admin Dashboard")
          )
        ],
      ),
    );
  }
}