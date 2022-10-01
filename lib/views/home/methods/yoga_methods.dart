import 'package:yoga_app/model/yoga_model.dart';
import 'package:yoga_app/services/yoga_database.dart';

Future makeYogaEntry(Yoga yoga, String TableName) async {
  await YogaDatabase.instance.Insert(yoga, TableName);
}

Future makeYogaSummaryEntry(YogaSummary yogaSummary) async {
  await YogaDatabase.instance.InsertYogaSummary(yogaSummary);
}
