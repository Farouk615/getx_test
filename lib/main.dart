import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/Providers/provider.dart';
import 'package:getx_test/views/MyHomePage.dart';

void main() async {
  runApp(MyApp());
  UserProvider userprovider = new UserProvider();
  // var txt = await userprovider.getUsers() ;
  // print(txt.toString()) ;
  //var user = await userprovider.getUser(24);
  Map data = {"cin" :"123"} ;
   var user = await userprovider.updateUser(30,data);
    print(user['user']['cin']);
  //  var user = await userprovider.deleteUser(12);
  //  print(user);
  // Map data = {"first_name":'fer',"last_name":'ayadi',"email":'far@gmail.com',"password":'hamma'};
  // var user = await userprovider.createUser(data);
  // print(user);


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
        getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/home', page: () => Home())],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

