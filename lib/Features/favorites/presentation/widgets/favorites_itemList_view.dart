import 'package:flutter/material.dart';
import 'package:mvvm_bookly/Features/favorites/presentation/widgets/favorites_item.dart'; 

import '../../data/model/favorites_model.dart';


class FavoritesItemlistView extends StatelessWidget {
  const FavoritesItemlistView({super.key, required this.books});
   final List<FavoritesBookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FavoritesItem(
            bookModel:books[index], //state.newestBooks[index],
           ),
        );
      },
    );
  }
}
