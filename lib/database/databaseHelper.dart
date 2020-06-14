import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  static final DatabaseHelper _databaseHelper = DatabaseHelper._internal();
  factory DatabaseHelper(){ return _databaseHelper; }
  DatabaseHelper._internal(){}
  Database _database;

  get database async{
    if(_database != null){
      return _database;
    } else {
      _database = await initializeDatabase();
      return _database;
    }
  }

  initializeDatabase() async {
    final dbPath =  await getDatabasesPath();
    final path =  await join(dbPath, 'data_base.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate );
  }

  _onCreate(Database db, int version) async{
    String sql = 'CREATE TABLE tasks ('
    'id INTEGER PRIMARY KEY AUTOINCREMENT,'
    'name VARCHAR'
    ')';
    await db.execute(sql);
  }

  create(Map<String, dynamic> data) async{
    var db = await database;
    int result = db.create(data);
    return result;
  }
}