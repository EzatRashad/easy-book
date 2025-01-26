import 'package:mvvm_bookly/Features/home/presentation/views/widgets/top_widget.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'newest_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesShape1),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.ph,
                const TopWidget(),
                30.ph,
                
                const FeaturedBooksListView(),
                45.ph,
                
              ],
            ),
          ),
          const SliverFillRemaining(
            child: NewestBooksListView(),
          ),
        ],
      ),
    );
  }
}
