import 'package:flutter/material.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text(
              'Recommanded for you',
              style: Styles.textStyle18,
            ),
                20.ph,
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: CustomBookImage(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
