import 'package:get/get.dart';
import 'package:weather_app/model/current_weather_data.dart';
import 'package:weather_app/service/weather_service.dart';

import '../model/five_days_data.dart';

class HomeController extends GetxController {
  String city;

  HomeController({this.city});

  CurrentWeatherData currentWeatherData = CurrentWeatherData();
  List<FiveDaysData> fiveDayData = [];
  List<CurrentWeatherData> dataList = [];

  @override
  onInit() {
    initState();
    getTopFiveCites();
    super.onInit();
  }

  void updateWeather() {
    initState();
  }

  void initState() {
    getCurrentWeatherData();
    getFiveDaysData();
  }

  void getCurrentWeatherData() {
    WeatherService(city: city).getCurrentWeatherData(onSuccess: (data) {
      currentWeatherData = data;
      update();
    }, onError: (err) {
      print(err);
      update();
    });
  }

  void getFiveDaysData() {
    WeatherService(city: city).getFiveThreeHourForcastData(onSuccess: (data) {
      fiveDayData = data;
      update();
    }, onError: (err) {
      print(err);
      update();
    });
  }

  void getTopFiveCites() {
    List<String> cites = [
      'zagazig',
      'cairo',
      'alexandria',
      'ismailia',
      'fayoum',
    ];
    cites.forEach((element) {
      WeatherService(city: city).getCurrentWeatherData(onSuccess: (data) {
        dataList.add(data);
        update();
      }, onError: (err) {
        print(err);
        update();
      });
    });
  }
}
