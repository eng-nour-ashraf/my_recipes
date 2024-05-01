import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get.dart' as gt;
import 'package:sqflite/sqflite.dart';

import 'models/product_sql_model.dart';

class SqlController extends gt.GetxController {
  Database? _database;

  Future initDatabase() async {
    return _database = await _initDB();
  }

  Future<Database> _initDB() async {
    var documentsDirectory = await getApplicationDocumentsDirectory();
    var path = join(documentsDirectory.path, 'myRecipeDb.db');
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE myRecipe ("
              "id INTEGER PRIMARY KEY,"
              "productId TEXT,"
              "productJson TEXT"
              ")");
        });
  }

  @override
  void onInit() {
    initDatabase();
    super.onInit();
  }

  Future insert(ProductSqlModel productSqlModel) async {
    await _database!.insert("myRecipe", productSqlModel.toJson());
  }

  Future<List<ProductSqlModel>> loadAll() async {
    var res = await _database!.query("myRecipe");
    List<ProductSqlModel> list = res.isNotEmpty
        ? res.map((item) => ProductSqlModel.fromJson(item)).toList()
        : [];
    return list;
  }

  loadItem(String id) async {
    var res =
    await _database!.query("myRecipe", where: "productId = ?", whereArgs: [id]);
    if (res.isNotEmpty) {
      return ProductSqlModel.fromJson(res.first);
    } else {
      return Null;
    }
  }

  Future updateItem(ProductSqlModel update) async {
    var res = await _database!.update("myRecipe", update.toJson(),
        where: "productId = ?", whereArgs: [update.productId]);
    return res;
  }

  Future deleteItem(String id) async {
    await _database!.delete("myRecipe", where: "productId = ?", whereArgs: [id]);
  }

  Future deleteAll() async {
    _database!.rawDelete("DELETE FROM myRecipe");
  }
}