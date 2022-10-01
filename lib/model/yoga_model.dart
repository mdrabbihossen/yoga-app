class YogaModel {
  static String IDName = "ID";
  static String YogaName = "YogaName";
  static String SecondsOrNot = "SecondsOrNot";
  static String ImageName = "ImageName";
}

class Yoga {
  final int? id;
  final bool Seconds;
  final String YogaTitle;
  final String YogaImgUrl;

  Yoga({
    this.id,
    required this.Seconds,
    required this.YogaImgUrl,
    required this.YogaTitle,
  });

  Yoga copy({int? id, bool? Seconds, String? YogaTitle, String? YogaImgUrl}) {
    return Yoga(
        id: id ?? this.id,
        Seconds: Seconds ?? this.Seconds,
        YogaImgUrl: YogaImgUrl ?? this.YogaImgUrl,
        YogaTitle: YogaTitle ?? this.YogaTitle);
  }

  factory Yoga.fromJson(Map<String, dynamic> json) {
    return Yoga(
      id: json[YogaModel.IDName] as int?,
      Seconds: json[YogaModel.SecondsOrNot] == 1,
      YogaTitle: json[YogaModel.YogaName] as String,
      YogaImgUrl: json[YogaModel.ImageName] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      YogaModel.IDName: id,
      YogaModel.SecondsOrNot: Seconds ? 1 : 0,
      YogaModel.YogaName: YogaTitle,
      YogaModel.ImageName: YogaImgUrl,
    };
  }
}
