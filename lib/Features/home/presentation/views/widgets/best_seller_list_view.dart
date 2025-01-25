import 'package:flutter/material.dart';
import 'package:mvvm_bookly/core/utils/styles.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular books',
            style: Styles.textStyle18,
          ),
                  20.ph,
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom:10),
                  child: BookListViewItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
