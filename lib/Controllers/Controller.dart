
import 'package:get/get.dart';
class HomeController extends GetxController{
  var count =10.obs;
  var data='fer'.obs;

 increment(){
 return count++;
}
addString(){
   data.value += 'test';
   return data;
}

}