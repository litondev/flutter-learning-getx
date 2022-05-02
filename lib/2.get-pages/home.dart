import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From Home"),
          TextButton(
            onPressed: (){
              Get.toNamed('/about');
            }, 
            child: Text("To About")
          ),
          TextButton(
            onPressed: (){
              Get.toNamed('/detail',arguments: {"id" : "1"});
            }, 
            child: Text("To Detail")
          ),
          TextButton(
            onPressed: (){
              Get.toNamed('/admin/login');
            }, 
            child: Text("To Admin Login")
          ),
          TextButton(
            onPressed: (){
              Get.toNamed("/admin/dashboard");
            }, 
            child: Text("Admin Dashboard")
          )
        ],
      ),
    );
  }
}