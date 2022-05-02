import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashboard extends StatelessWidget{

  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From Admin Dashboard"),          
          TextButton(
            onPressed: (){
              Get.toNamed('/admin/dashboard/admin/about');
            }, 
            child: Text("To About Admin")
          ),
          TextButton(
            onPressed: (){
              Get.toNamed('/admin/dashboard/admin/logout');
            }, 
            child: Text("To About Keluar")
          )
        ],
      ),
    );
  }
}