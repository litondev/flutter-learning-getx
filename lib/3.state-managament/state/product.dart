import 'dart:async';

import 'package:get/get.dart';

import "../models/product.dart";

class ProductState extends GetxController{
  var items = [].obs;

  var isLoadingNext = false.obs;

  var currentPage = 1.obs;

  Future<String> onLoad() async{
     return Future<String>.delayed(
      const Duration(seconds: 3),
      (){
        var myList = [];

        for(var i=1;i<10;i++){
          myList.add(
            ProductModel(name: "Test"+i.toString(),stock : 1000,description: "")
          );
        }

        items.addAll(myList);
        
        return Future.value("Berhasil");
      });    
  }

  Future<void> onNext() async{
    Timer(const Duration(seconds: 0), () async{    
      isLoadingNext.toggle();    
    });

    return Future<void>.delayed(
      const Duration(seconds: 3),
      (){
        currentPage = currentPage + 1;
        
        currentPage.refresh();

        var myList = [];

        for(var i=((currentPage.value - 1)* 10 ) ;i<currentPage.value*10;i++){   
          myList.add(ProductModel(name: "Test"+i.toString(),stock : 1000,description: ""));          
        }        

        items.addAll(myList);
        
        isLoadingNext.toggle();    
      });    
  }
}