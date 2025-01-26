
import 'package:hive_flutter/adapters.dart';
import 'package:mvvm_bookly/Features/favorites/data/model/favorites_model.dart';
 
class HiveServices {
  static const String favBooks = 'favBooks';

static Future<void> addItem({required FavoritesBookModel book}) async {
  final box = Hive.box<FavoritesBookModel>(favBooks);

  await box.put(book.id, book);
}


static List<FavoritesBookModel> getItems() {
  final box = Hive.box<FavoritesBookModel>(favBooks);

  final result = box.values.toList();
  return result;
}


  static Future<void> deleteItem(String id) async {
    final box = Hive.box<FavoritesBookModel>(favBooks);
    await box.delete(id);

  }

  static Future<void> clearAllItems() async {
    final box = Hive.box<FavoritesBookModel>(favBooks);
    await box.clear();
  }

}
