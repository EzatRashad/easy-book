import 'package:hive_flutter/hive_flutter.dart';

part 'favorites_model.g.dart';

@HiveType(typeId: 0)
class FavoritesBookModel extends HiveObject {
  FavoritesBookModel({
    required this.id,
    required this.title,
    required this.authors,
    required this.thumbnail,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String authors;

  @HiveField(3)
  final String thumbnail;

   
}
