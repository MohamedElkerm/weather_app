import 'package:weather_app/api/api_repo.dart';
import 'package:weather_app/model/current_weather_data.dart';
import 'package:weather_app/model/five_days_data.dart';

class WeatherService {
  String city;

  WeatherService({this.city});

  //https://api.openweathermap.org/data/2.5/weather?q=cairon&appid=b6f5065cdbe0108cb467ad88a0e6ab7d
  String baseURL = "https://api.openweathermap.org/data/2.5";
  String APIKey = "appid=b6f5065cdbe0108cb467ad88a0e6ab7d";

  void getCurrentWeatherData({
    Function() beforeSend,
    Function(CurrentWeatherData currentWeatherData) onSuccess,
    Function(dynamic error) onError,
  }) {
    final url = "$baseURL/weather?q=$city&$APIKey";
    ApiRepo(url: url, payload: null).getData(
      beforeSend: () => beforeSend(),
      onSuccess: (data) => onSuccess(CurrentWeatherData.fromJson(data)),
      onError: (err) => onError(err),
    );
  }
  void getFiveThreeHourForcastData({
    //https://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=b6f5065cdbe0108cb467ad88a0e6ab7d
    Function() beforeSend,
    Function(List<FiveDaysData> fiveDayData) onSuccess,
    Function(dynamic error) onError,
  }) {
    final url = "$baseURL/forecast?q=$city&$APIKey";
    ApiRepo(url: url, payload: null).getData(
      beforeSend: () => beforeSend(),
      onSuccess: (data)=>
      {
        onSuccess((data['list'] as List)
            ?.map((t) => FiveDaysData.fromJson(t))
            ?.toList() ??
            List.empty()),
      } ,
      onError: (err) => onError(err),
    );
  }
}
