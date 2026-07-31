import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/student_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'students.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE students(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        studentName TEXT NOT NULL,
        rollNumber TEXT NOT NULL UNIQUE,
        email TEXT NOT NULL,
        mobile TEXT NOT NULL,
        department TEXT NOT NULL,
        semester TEXT NOT NULL,
        cgpa REAL NOT NULL
      )
    ''');
  }

  // Insert Student
  Future<int> insertStudent(Student student) async {
    Database db = await database;
    return await db.insert('students', student.toMap());
  }

  // Get All Students
  Future<List<Student>> getAllStudents() async {
    Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'students',
      orderBy: 'studentName ASC',
    );
    return List.generate(maps.length, (i) {
      return Student.fromMap(maps[i]);
    });
  }

  // Get Student by ID
  Future<Student?> getStudentById(int id) async {
    Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'students',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Student.fromMap(maps.first);
    }
    return null;
  }

  // Update Student
  Future<int> updateStudent(Student student) async {
    Database db = await database;
    return await db.update(
      'students',
      student.toMap(),
      where: 'id = ?',
      whereArgs: [student.id],
    );
  }

  // Delete Student
  Future<int> deleteStudent(int id) async {
    Database db = await database;
    return await db.delete(
      'students',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Search Students
  Future<List<Student>> searchStudents(String query) async {
    Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'students',
      where: 'studentName LIKE ? OR rollNumber LIKE ?',
      whereArgs: ['%$query%', '%$query%'],
      orderBy: 'studentName ASC',
    );
    return List.generate(maps.length, (i) {
      return Student.fromMap(maps[i]);
    });
  }

  // Get Total Students Count
  Future<int> getTotalStudents() async {
    Database db = await database;
    final result = await db.rawQuery('SELECT COUNT(*) as count FROM students');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  // Delete All Students
  Future<void> deleteAllStudents() async {
    Database db = await database;
    await db.delete('students');
  }
}