import 'package:get/get.dart';
import 'package:weather_app/controller/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'cairo'));
  }

}