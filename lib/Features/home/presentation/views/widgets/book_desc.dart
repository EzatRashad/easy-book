import 'package:flutter/material.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../../../core/utils/styles.dart';

class BookDesc extends StatelessWidget {
  const BookDesc({super.key, required this.desc});
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
            Text(
                  
                "About The Book",
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                3.ph,
                Text(
                  desc  ,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ],
      ),
    );
  }
}