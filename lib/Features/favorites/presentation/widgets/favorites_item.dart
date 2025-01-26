import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bookly/Features/favorites/data/model/favorites_model.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../../core/utils/AppColors.dart';
import '../../../../core/utils/hive_services.dart';
import '../../../../core/utils/styles.dart';
import '../../manager/favorites_cubit/favorites_cubit.dart';

class FavoritesItem extends StatelessWidget {
  const FavoritesItem({super.key, required this.bookModel});
  final FavoritesBookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Card(
        color: AppColors.backLight,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.thumbnail,
                ),
              ),
              10.pw,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(
                          color: AppColors.secondtGray,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    3.ph,
                    Text(
                      bookModel.authors,
                      style: Styles.textStyle10.copyWith(
                        color: AppColors.secondtGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    3.ph,
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  HiveServices.clearAllItems().then(
                    (value) {
                      if (context.mounted) {
                        BlocProvider.of<FavoritesCubit>(context).getFavorites();
                      }
                    },
                  );
                },
                icon:   Icon(
                  Icons.delete,
                  color: Colors.red[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
