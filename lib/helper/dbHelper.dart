import 'package:employee/registration/model/user.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';
class DBHelper{
  static Future<Database> createDatabase() async{
    var dbPath = await sql.getDatabasesPath();
    return await sql.openDatabase(path.join(dbPath, 'users.db'),version: 1,
    onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE users(id integer primary key autoincrement, name text not null,address text not null, age text not null, phone text not null)');
    } );
  }
  // static Future<void> insert(String table, Map<String,dynamic> data) async{
  //   final db = await DBHelper.database();
  //   db.insert(table, data);
  // }
  Future<UserModel> insertData(UserModel userModel) async {
    Database database = await DBHelper.createDatabase();
    userModel.id = await database.insert('users', userModel.toJson());
    return userModel;

  }
  Future<List<UserModel>> fetchRecord() async{
    Database database = await DBHelper.createDatabase();
    List<UserModel> userRecordModelList = [];
    List record = await database.query('users');
    for(var rec in record){
      print(rec);
      userRecordModelList.add(UserModel.fromMap(rec));
    }
    return userRecordModelList;
  }


//   static Future<List<Map<String, dynamic>>> getData(String table) async{
//     var dbClient = await DBHelper.createDatabase();
//     var result = await dbClient.rawQuery("SELECT * FROM $table");
//     return result.toList();
// /*
//     final db = await DBHelper.database();
//     return db.query(table);
// */
//
//   }

}