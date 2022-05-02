import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AdminLogout extends StatelessWidget{
  GetStorage storage = GetStorage();

  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From Admin Logout"),          
          TextButton(
            onPressed: (){
              storage.write("login","no"); 
              Get.toNamed("/admin/login");
            }, 
            child: Text("Logout")
          ),
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