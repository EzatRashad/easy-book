import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/newest_list_view_item_loading.dart';

class SearchLoadingListView extends StatelessWidget {
  const SearchLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: ShimmerBookListViewItem(),
        );
      },
    );
  }
}