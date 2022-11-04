class YogaModel {
  static String YogaTable1 = 'BeginnerYoga';
  static String YogaTable2 = 'WeightLossYoga';
  static String YogaTable3 = 'KidsYoga';
  static String YogaSummary = 'YogaSummary';
  static String YogaWorkOutName = 'YogaWorkOutName';
  static String BackImg = 'BackImg';
  static String TimeTaken = 'TimeTaken';
  static String TotalNoOfWork = 'TotalNoOfWork';
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

class YogaSummary {
  final int? id;
  final String YogaWorkOutName;
  final String BackImg;
  final String TimeTaken;
  final String TotalNoOfWork;

  YogaSummary({
    this.id,
    required this.YogaWorkOutName,
    required this.BackImg,
    required this.TimeTaken,
    required this.TotalNoOfWork,
  });

  YogaSummary copy({
    int? id,
    String? TimeTaken,
    String? YogaWorkOutName,
    String? BackImg,
    String? TotalNoOfWork,
  }) {
    return YogaSummary(
      id: id ?? this.id,
      TimeTaken: TimeTaken ?? this.TimeTaken,
      YogaWorkOutName: YogaWorkOutName ?? this.YogaWorkOutName,
      BackImg: BackImg ?? this.BackImg,
      TotalNoOfWork: TotalNoOfWork ?? this.TotalNoOfWork,
    );
  }

  factory YogaSummary.fromJson(Map<String, dynamic> json) {
    return YogaSummary(
      id: int.parse(json[YogaModel.IDName]),
      TimeTaken: json[YogaModel.TimeTaken] as String,
      YogaWorkOutName: json[YogaModel.YogaName] as String,
      BackImg: json[YogaModel.BackImg] as String,
      TotalNoOfWork: json[YogaModel.TotalNoOfWork] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      YogaModel.IDName: id,
      YogaModel.TimeTaken: TimeTaken,
      YogaModel.YogaWorkOutName: YogaWorkOutName,
      YogaModel.BackImg: BackImg,
      YogaModel.TotalNoOfWork: TotalNoOfWork,
    };
  }
}
