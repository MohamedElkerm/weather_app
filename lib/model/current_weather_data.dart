import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/syc.dart';
import 'package:weather_app/model/weather.dart';

class CurrentWeatherData {
  Coord coord;
  List<Weather> weather;
  String base;
  MainWeather mainWeather;
  int visibility;
  Clouds clouds;
  int dt;
  Syc syc;
  int timezone;
  int id;
  String name;
  int cod;

  CurrentWeatherData(
      {this.coord,
      this.weather,
      this.base,
      this.mainWeather,
      this.visibility,
      this.clouds,
      this.dt,
      this.syc,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherData(
      coord: Coord.fromJson(json["coord"]),
      weather: List.of(json["weather"])
          .map((i) => i /* can't generate it properly yet */)
          .toList(),
      base: json["base"],
      mainWeather: MainWeather.fromJson(json["mainWeather"]),
      visibility: int.parse(json["visibility"]),
      clouds: Clouds.fromJson(json["clouds"]),
      dt: int.parse(json["dt"]),
      syc: Syc.fromJson(json["syc"]),
      timezone: int.parse(json["timezone"]),
      id: int.parse(json["id"]),
      name: json["name"],
      cod: int.parse(json["cod"]),
    );
  }
//

}