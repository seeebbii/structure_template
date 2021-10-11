import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {

  static AuthController instance = Get.find();




  void saveUserState(String id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userId', id);
  }

  Future getUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('userId');
  }

  void logOutUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userId');
  }

}