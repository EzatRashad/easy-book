import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_bookly/Features/favorites/manager/favorites_cubit/favorites_state.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/home_view.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../../../core/utils/hive_services.dart';
import '../../../../favorites/data/model/favorites_model.dart';
import '../../../../favorites/manager/favorites_cubit/favorites_cubit.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeView()));
        },
        child: Icon(
          FontAwesomeIcons.arrowLeft,
          color: AppColors.backLight,
          size: 24.sp,
        ),
      ),
      actions: [
        BlocBuilder<FavoritesCubit, FavoritesState>(
          builder: (context, state) {
            bool isFav =
                HiveServices.getItems().any((item) => item.id == book.id);

            return GestureDetector(
              onTap: () {
                if (isFav) {
                  BlocProvider.of<FavoritesCubit>(context)
                      .removeItemFromHive(book.id!);
                } else {
                  BlocProvider.of<FavoritesCubit>(context).addDataToHive(
                    FavoritesBookModel(
                      id: book.id!,
                      title: book.volumeInfo!.title ?? "Unknown ",
                      authors: book.volumeInfo!.authors![0],
                      thumbnail: book.volumeInfo!.imageLinks!.thumbnail ?? "",
                    ),
                  );
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(isFav
                        ? 'Removed from favorites!'
                        : 'Added to favorites!'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 60.w),
                child: GestureDetector(
                  child: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    size: 35,
                    color: AppColors.backLight,
                  ),
                ),
              ),
            );
          },
        ),
        20.pw,
      ],
      backgroundColor: AppColors.blue,
    );
  }
}
