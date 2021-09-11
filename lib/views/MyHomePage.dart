import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/Controllers/Controller.dart';

class MyHomePage extends StatelessWidget {
  @override
    HomeController c=Get.put(HomeController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" my home"),
      ),
      body: Column(
        children: [
          Container(
            child: Obx(()=>Text("data  :  ${c.count}")),
          ),
          MaterialButton(
              child: Text("inc"),
              onPressed: (){
                c.increment();
          }),
          Obx(()=>Text(" new data ${c.data}")),
          MaterialButton(
              child: Text("add String"),
              onPressed: (){
                c.addString();
              }),
          MaterialButton(
              child: Text("go to home"),
              onPressed: (){
                //Get.to(Home());
                //Get.off(Home());
                Get.toNamed("/home");
              }),
        ],
      ),
    );
  }
}
class Home extends StatelessWidget {
  @override
  HomeController c=Get.put(HomeController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" my home"),
      ),
      body: Column(
        children: [
          Container(
            child: Obx(()=>Text("data  :  ${c.count}")),
          ),
          MaterialButton(
              child: Text("inc"),
              onPressed: (){
                c.increment();
              }),
          Obx(()=>Text(" new data ${c.data}")),
          MaterialButton(
              child: Text("add String"),
              onPressed: (){
                c.addString();
              }),
          MaterialButton(
              child: Text("Roll back"),
              onPressed: (){
                Get.back();
                //Get.to(MyHomePage());
              }),
        ],
      ),
    );
  }
}
