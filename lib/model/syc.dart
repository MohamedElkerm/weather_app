class Syc {
  /*
  "country": "FR",
    "sunrise": 1654228806,
    "sunset": 1654286405
   */
  String country;
  int sunrise , sunset,id;

  Syc({this.country, this.sunrise, this.sunset, this.id});

  Map<String, dynamic> toJson() {
    return {
      "country": this.country,
      "sunrise": this.sunrise,
      "sunset": this.sunset,
      "id": this.id,
    };
  }

  factory Syc.fromJson(Map<String, dynamic> json) {
    return Syc(
      country: json["country"],
      sunrise: int.parse(json["sunrise"]),
      sunset: json["sunset"],
      id: json["id"],
    );
  }
//

}