import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import "../state/product.dart";

class ProductPages extends StatelessWidget{
  final ProductState productState = Get.put(ProductState());

  Widget build(BuildContext context){
     return FutureBuilder(
      future:  productState.onLoad(),
      builder: (ctx,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              heightFactor:  15,
              child: CircularProgressIndicator(color: Colors.greenAccent),
            );
          }

          if(snapshot.error != null){
            return const Center(
              heightFactor:  15,
              child: Text("Terjadi Kesalahan",style : TextStyle(color: Colors.red)),
            );
          }   

        return Obx(() => ListView.builder(
            shrinkWrap: true,
            itemCount : productState.items.length,
            itemBuilder :(ctx,i){            
              var defaultConatiner = Container(child :Text(productState.items[i].name,style: TextStyle(fontSize: 12),));                            

              if(productState.items.length == (i+1)){
                return Column(     
                  children: [
                    defaultConatiner,
                    
                    TextButton(
                      child : Obx(() => productState.isLoadingNext.isTrue ? const Text(" . . . ") : const Text("Next")),
                      onPressed: (){                    
                        productState.onNext();
                      }
                    )
                  ],
                );
              }

              return defaultConatiner;
          }
        ));
    });
  }
}