import 'package:get/get.dart';

class NavigationController extends GetxController {

  static NavigationController instance = Get.find();

  Future<dynamic>? navigateTo(String routeName){
    return Get.toNamed(routeName);
  }

  Future<dynamic>? navigateToWithArguments(String routeName, dynamic arguments) {
    return Get.toNamed(routeName, arguments: arguments);
  }

  Future<dynamic>? getOffAll(String routeName){
    return Get.offAllNamed(routeName);
  }

  goBack() => Get.back();


}