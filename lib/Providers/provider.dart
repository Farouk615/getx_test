import 'package:get/get.dart';

class UserProvider extends GetConnect {
    // Get request
  Future<Map<String,dynamic>> getUsers() async {
    var response = await get('http://192.168.1.231/api/user/all');
    return response.body;
  }
  Future<Map<String,dynamic>> getUser(int id) async {
    var response = await get('http://192.168.1.231/api/user/show/$id');
    return response.body;
  }
  Future<Map<String,dynamic>> updateUser(int id, Map data) async {
    var response = await post('http://192.168.1.231/api/user/update/$id',data);
    return response.body;
  }
  Future<Map<String,dynamic>> deleteUser(int id, ) async {
    var response = await post('http://192.168.1.231/api/user/delete/$id',null);
    return response.body;
  }
  Future<Map<String,dynamic>> createUser(Map data ) async {
    var response = await post('http://192.168.1.231/api/register',data);
    return response.body;
  }

}