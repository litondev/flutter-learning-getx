import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class HomeState extends GetxController{
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final HomeState homeState = Get.put(HomeState());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Clicks: ${homeState.count}"))
      ),

      body: Center(
          child: ElevatedButton(
            child: const Text("Go to Other"), 
            onPressed: () => Get.to(OtherPage()))
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), 
            onPressed: homeState.increment
          )
      );
  }
}

class OtherPage extends StatelessWidget {
  final HomeState homeState = Get.find();

  OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(context){
     return Scaffold(
       body: Center(
         child: Text("${homeState.count}")
        )
      );
  }
}
