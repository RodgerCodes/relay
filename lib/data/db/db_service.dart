import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbService {
  static Database? db;
  Future<Database> get database async => db ??= await initDB();

  Future initDB() async {
    final path = join(await getDatabasesPath(), 'app.db');
    return openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    // create db tables
  }
}
