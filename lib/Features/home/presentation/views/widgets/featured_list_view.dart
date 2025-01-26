
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/feature_books_cubit/feature_books_states.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:mvvm_bookly/Features/home/presentation/views/widgets/loading_custom_book_image%20.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import 'package:mvvm_bookly/core/widgets/custom_error_widget.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksStates>(
      builder: (context, state) {
        if (state is FeatureBooksError) {
          CustomErrorWidget(errorMessage: state.message);
        } else if (state is FeatureBooksSuccess) {
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
                      itemCount: state.featureBooks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                            BookDetailsView(bookModel: state.featureBooks[index], books: state.featureBooks,),
                                    ));
                              },
                              child: CustomBookImage(
                                imageUrl: state.featureBooks[index].volumeInfo!
                                        .imageLinks!.thumbnail ??
                                    "",
                              ),
                            ));
                      }),
                ),
              ],
            ),
          );
        }
        return SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: LoadingCustomBookImage(),
                );
              }),
        );
      },
    );
  }
}
