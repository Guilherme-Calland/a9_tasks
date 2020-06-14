import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  static final DatabaseHelper _databaseHelper = DatabaseHelper._internal();
  factory DatabaseHelper(){ return _databaseHelper; }
  DatabaseHelper._internal();
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
    final path = join(dbPath, 'data_base.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate );
    return db;
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
    int result = await db.insert('tasks', data);
    return result;
  }

  read() async {
    var db = await database;
    String sql = 'SELECT * FROM tasks ORDER BY id';
    List<Map<String,dynamic>> rawData = await db.rawQuery(sql);
    return rawData;
  }

  update(Map<String, dynamic> data) async {
    var db = await database;
    int result = await db.update(
      'tasks', data,
      where: 'id = ?',
      whereArgs: [data['id']]
    );
    return result;
  }
}