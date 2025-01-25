
import 'package:mvvm_bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),16.ph,
          const SimilarBooksListview(),
        ],
      ),
    );
  }
}
