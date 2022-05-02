import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatelessWidget{
  final args = Get.arguments;

  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Text("Hello From Detail"),
          Text(args["id"]),
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