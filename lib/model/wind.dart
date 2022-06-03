class Wind {
  double deg , speed;

  Wind({this.deg, this.speed});

  Map<String, dynamic> toJson() {
    return {
      "deg": this.deg,
      "speed": this.speed,
    };
  }

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      deg: double.parse(json["deg"]),
      speed: json["speed"],
    );
  }
//

}