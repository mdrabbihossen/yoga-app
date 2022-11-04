import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:yoga_app/model/yoga_model.dart';

class YogaDatabase {
  static final YogaDatabase instance = YogaDatabase._init();
  static Database? _database;

  YogaDatabase._init();

// initialize database
  Future<Database> _initDB(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // get database
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDB('yoga.db');
    return _database;
  }

//create database
  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';

    await db.execute(''' 
    CREATE TABLE BeginnerYoga(
    ${YogaModel.IDName} $idType,
    ${YogaModel.YogaName} $textType,
    ${YogaModel.ImageName} $textType,
    ${YogaModel.SecondsOrNot} $boolType,
    ),
     CREATE TABLE BeginnerYoga(
    ${YogaModel.IDName} $idType,
    ${YogaModel.YogaName} $textType,
    ${YogaModel.ImageName} $textType,
    ${YogaModel.SecondsOrNot} $boolType,
    ),
     CREATE TABLE BeginnerYoga(
    ${YogaModel.IDName} $idType,
    ${YogaModel.YogaName} $textType,
    ${YogaModel.ImageName} $textType,
    ${YogaModel.SecondsOrNot} $boolType,
    ),
    ''');
  }
}
