import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_bookly/Features/favorites/presentation/widgets/favorites_itemList_view.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/home_view.dart';
import 'package:mvvm_bookly/core/utils/styles.dart';

import '../../../../core/utils/AppColors.dart';
import '../../../../core/utils/hive_services.dart';
import '../../manager/favorites_cubit/favorites_cubit.dart';
import '../../manager/favorites_cubit/favorites_state.dart';

class FavoritesViewBody extends StatefulWidget {
  const FavoritesViewBody({super.key});

  @override
  State<FavoritesViewBody> createState() => _FavoritesViewBodyState();
}

class _FavoritesViewBodyState extends State<FavoritesViewBody> {
  @override
  void initState() {
    BlocProvider.of<FavoritesCubit>(context).getFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        title: Text(
          'Favorites',
          style: Styles.textStyle24.copyWith(color: AppColors.backLight),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeView()));
          },
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: AppColors.backLight,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              HiveServices.clearAllItems().then(
                (value) {
                  if (context.mounted) {
                    BlocProvider.of<FavoritesCubit>(context).getFavorites();
                  }
                },
              );
            },
            child: Text(
              'Clear All',
              style: Styles.textStyle18.copyWith(
                color: Colors.red[800],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<FavoritesCubit, FavoritesState>(
          builder: (context, state) {
            if (state is FavoritesSuccess) {
              if (state.favorites.isEmpty) {
                return const Center(
                  child: Center(
                    child: Text(
                      'No Favorites Books....',
                      style: Styles.textStyle20,
                    ),
                  ),
                );
              } else {
                return FavoritesItemlistView(
                  books: state.favorites,
                );
              }
            } else if (state is FavoritesFailure) {
              return Center(
                child: Text(state.errMessage),
              );
            } else {
              return const Center(
                child: Text(''),
              );
            }
          },
        ),
      ),
    );
  }
}
