import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  static final DatabaseHelper _databaseHelper = DatabaseHelper._internal();
  factory DatabaseHelper(){ return _databaseHelper; }
  DatabaseHelper._internal(){}
  Database _database;

  get database async {
    if( _database != null ){
      return _database;
    } else {
      _database = await _initializeDatabase();
      return _database;
    }
  }

  _initializeDatabase() async {
    final path = await getDatabasesPath();
    final file = join(path, 'brunas_data_base.db');
    var db = await openDatabase(file, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    String sql = 'CREATE TABLE tasks ('
    'id INTEGER PRIMARY KEY AUTOINCREMENT, '
    'name VARCHAR '
    ')';
    await db.execute(sql);
  }

  create(Map<String, dynamic> data){
    
  }
}