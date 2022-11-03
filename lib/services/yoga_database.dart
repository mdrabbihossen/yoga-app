// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:yoga_app/model/yoga_model.dart';
//
// class YogaDatabase {
//   static final YogaDatabase instance = YogaDatabase._init();
//   static Database? _database;
//
//   YogaDatabase._init();
//
// // initialize
//   Future<Database> initializeDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);
//     return await openDatabase(path, version: 1, onCreate: createDB);
//   }
//   //initialize end
//   Future<Database?> get database async{
//     if(_database!=null)return _database;
//     _database=await initializeDB("YogaStepsDB.db");
//     return _database;
//   }
//   // create database
//   Future createDB(Database db, int version) async {
//     final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT ';
//     final textType = 'TEXT NOT NULL';
//     final boolType = 'BOOLEAN NOT NULL';
//     await db.execute('''
//   CREATE TABLE BeginnerYoga(
//    ${YogaModel.IDName} $idType,
//    ${YogaModel.YogaName} $textType,
//    ${YogaModel.ImageName} $textType,
//    ${YogaModel.SecondsOrNot} $boolType
//
//    )
//  ''');
//   }
//   // create database end
// }
