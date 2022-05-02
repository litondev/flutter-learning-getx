import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AdminLogin extends StatelessWidget{
  GetStorage storage = GetStorage();

  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From Admin Login"),
          TextButton(
            onPressed: (){
              storage.write("login","yes");
              Get.toNamed("/admin/dashboard");
            }, 
            child: Text("Login")
          ),
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