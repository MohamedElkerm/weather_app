class MainWeather {
  double temp, feels_like, temp_min, pressure, humidity;

  MainWeather({
    this.temp,
    this.feels_like,
    this.temp_min,
    this.pressure,
    this.humidity,
  });

  Map<String, dynamic> toJson() {
    return {
      "temp": this.temp,
      "feels_like": this.feels_like,
      "temp_min": this.temp_min,
      "pressure": this.pressure,
      "humidity": this.humidity,
    };
  }

  factory MainWeather.fromJson(Map<String, dynamic> json) {
    return MainWeather(
      temp: double.parse(json["temp"]),
      feels_like: json["feels_like"],
      temp_min: json["temp_min"],
      pressure: json["pressure"],
      humidity: json["humidity"],
    );
  }
//

}
