
import 'package:hive_flutter/adapters.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';

class HiveServices {
  static const String favBooks = 'favBooks';

static Future<void> addItem({required BookModel book}) async {
  final box = Hive.box<BookModel>(favBooks);

  await box.put(book.id, book);
}


static List<BookModel> getItems() {
  final box = Hive.box<BookModel>(favBooks);

  final result = box.values.toList();
  return result;
}


  static Future<void> deleteItem(int id) async {
    final box = Hive.box<BookModel>(favBooks);
    await box.delete(id);

  }

  static Future<void> clearAllItems() async {
    final box = Hive.box<BookModel>(favBooks);
    await box.clear();
  }

}
