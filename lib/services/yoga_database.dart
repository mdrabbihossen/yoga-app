import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yoga_app/model/yoga_model.dart';

class YogaDatabase {
  static final YogaDatabase instance = YogaDatabase._init();
  static Database? _database;

  YogaDatabase._init();

  // initialize database
  Future<Database> initializeDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: createDB);
  }

  // initialize database end
  // get database
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initializeDB("YogaStepsDB.db");
    return _database;
  }

  // get database end
  // create Database
  Future createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    // beginner yoga
    await db.execute('''
       CREATE TABLE ${YogaModel.YogaTable1}(
        ${YogaModel.IDName} $idType,
        ${YogaModel.YogaName} $textType,
        ${YogaModel.ImageName} $textType,
        ${YogaModel.SecondsOrNot} $boolType,
       ),''');
    // beginner yoga end

    // weight loss yoga
    await db.execute('''
       CREATE TABLE ${YogaModel.YogaTable2}(
        ${YogaModel.IDName} $idType,
        ${YogaModel.YogaName} $textType,
        ${YogaModel.ImageName} $textType,
        ${YogaModel.SecondsOrNot} $boolType,
       ),''');
    //weight loss yoga end

    // kids yoga
    await db.execute('''
       CREATE TABLE ${YogaModel.YogaTable3}(
        ${YogaModel.IDName} $idType,
        ${YogaModel.YogaName} $textType,
        ${YogaModel.ImageName} $textType,
        ${YogaModel.SecondsOrNot} $boolType,
       ),''');
    // kids yoga end
    // Yoga Summary
    await db.execute('''
       CREATE TABLE ${YogaModel.YogaSummary}(
        ${YogaModel.IDName} $idType,
        ${YogaModel.YogaWorkOutName} $textType,
        ${YogaModel.BackImg} $textType,
        ${YogaModel.TimeTaken} $textType,
          ${YogaModel.TotalNoOfWork} $textType,
       ),''');
    // Yoga Summary end
  }

// create database end
// Insert db
  Future<Yoga?> Insert(Yoga yoga,String TableName) async {
    final db = await instance.database;
    final id = await db!.insert(TableName, yoga.toJson());
    return yoga.copy(id: id);
  }

  // Insert db end
  // INSERT yoga summary
  Future<YogaSummary?> InsertYogaSummary(YogaSummary yogaSummary) async {
    final db = await instance.database;
    final id = await db!.insert(YogaModel.YogaTable1, yogaSummary.toJson());
    return yogaSummary.copy(id: id);
  }

  // INSERT yoga summary end
  // read all yoga
  Future<List<Yoga>> readAllYoga(String TableName) async {
    final db = await instance.database;
    final orderBy = '${YogaModel.IDName} ASC';
    final query_res = await db!.query(TableName, orderBy: orderBy);
    return query_res.map((json) => Yoga.fromJson(json)).toList();
  }

// read all yoga end
  // read all yoga summary
  Future<List<YogaSummary>> readAllYogaSummary() async {
    final db = await instance.database;
    final orderBy = '${YogaModel.IDName} ASC';
    final query_res = await db!.query(YogaModel.YogaSummary, orderBy: orderBy);
    return query_res.map((json) => YogaSummary.fromJson(json)).toList();
  }

  // read all yoga summary end
  // read one yoga
  Future<Yoga?> readOneYoga(int id,String TableName) async {
    final db = await instance.database;
    final map = await db!.query(TableName,
        columns: YogaModel.YogaTable1ColumnName,
        where: '${YogaModel.IDName} = ?',
        whereArgs: [id]);
    if (map.isNotEmpty) {
      return Yoga.fromJson(map.first);
    } else {
      return null;
    }
  }
//read one yoga end
}
