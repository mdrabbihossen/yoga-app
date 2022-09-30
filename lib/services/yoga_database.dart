import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class YogaDatabase {
  static final YogaDatabase instance=YogaDatabase._init();
  static Database? database;
  YogaDatabase._init();

  // initialize database
 Future<Database> initializeDB(String filePath) async{

   final dbPath=await getDatabasesPath();
   final path=join(dbPath,filePath);
   return await openDatabase(path,version: 1,onCreate: createDB);
 }
 // initialize database end
 // get database
  Future <Database?> get database async{
    if(database != null) return database;
    database = await initializeDB("YogaStpesDB.db");
    return database;
  }
 // get database end
 // create Database

 // create database end
}
