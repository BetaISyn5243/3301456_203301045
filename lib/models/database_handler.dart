import 'package:betafitness/models/report.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'example.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE reports(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL,phone TEXT NOT NULL, password TEXT NOT NULL, username TEXT,email TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertReports(List<Report> reports) async {
    int result = 0;
    final Database db = await initializeDB();
    for (var report in reports) {
      result = await db.insert('reports', report.toMap());
    }
    return result;
  }

  Future<List<Report>> retrieveReports() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('reports');
    return queryResult.map((e) => Report.fromMap(e)).toList();
  }
}