class YogaModel {
  static String YogaTable1 = 'BeginnerYoga';
  static String IDName = 'ID';
  static String YogaName = 'YogaName';
  static String SecondsOrNot = 'SecondsOrNot';
  static String ImageName = 'ImageName';
  static List<String>? YogaTable1ColumnName = [
    YogaModel.IDName,
    YogaModel.YogaName,
    YogaModel.SecondsOrNot,
    YogaModel.ImageName,
  ];
}

class Yoga {
  final int? id;
  final bool seconds;
  final String yogaTitle;
  final String yogaImgUrl;

  Yoga({
    this.id,
    required this.seconds,
    required this.yogaTitle,
    required this.yogaImgUrl,
  });

  Yoga copy({
    int? id,
    bool? seconds,
    String? yogaTitle,
    String? yogaImgUrl,
  }) {
    return Yoga(
      id: id ?? this.id,
      seconds: seconds ?? this.seconds,
      yogaTitle: yogaTitle ?? this.yogaTitle,
      yogaImgUrl: yogaImgUrl ?? this.yogaImgUrl,
    );
  }

  factory Yoga.fromJson(Map<String, dynamic> json) {
    return Yoga(
      id: int.parse(json[YogaModel.IDName]),
      seconds: json[YogaModel.SecondsOrNot] == 1,
      yogaTitle: json[YogaModel.YogaName] as String,
      yogaImgUrl: json[YogaModel.ImageName] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      YogaModel.IDName: id,
      YogaModel.SecondsOrNot: seconds ? 1 : 0,
      YogaModel.YogaName: yogaTitle,
      YogaModel.ImageName: yogaImgUrl,
    };
  }
}
