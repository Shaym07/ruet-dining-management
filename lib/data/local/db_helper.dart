import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'user_management.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Create Admin Table
    await db.execute('''
      CREATE TABLE admins (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        admin_id TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL
      )
    ''');

    // Create Student Table
    await db.execute('''
      CREATE TABLE students (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        roll_number TEXT NOT NULL UNIQUE,
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL
      )
    ''');
  }

  // Insert Admin
  Future<int> insertAdmin(Map<String, dynamic> admin) async {
    final db = await database;
    return await db.insert('admins', admin);
  }

  // Insert Student
  Future<int> insertStudent(Map<String, dynamic> student) async {
    final db = await database;
    return await db.insert('students', student);
  }

  // Get Admin by Admin ID
  Future<Map<String, dynamic>?> getAdmin(String adminId) async {
    final db = await database;
    final result = await db.query(
      'admins',
      where: 'admin_id = ?',
      whereArgs: [adminId],
    );
    return result.isNotEmpty ? result.first : null;
  }

  // Get Student by Roll Number
  Future<Map<String, dynamic>?> getStudent(String rollNumber) async {
    final db = await database;
    final result = await db.query(
      'students',
      where: 'roll_number = ?',
      whereArgs: [rollNumber],
    );
    return result.isNotEmpty ? result.first : null;
  }
}