import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:mvvm_bookly/core/utils/styles.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import 'newest_list_view_item.dart';
import 'newest_list_view_item_loading.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

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
        BlocBuilder<NewestBooksCubit,NewestBooksStates>(builder: (context, state) {
          if (state is NewesBooksError) {
            return CustomErrorWidget(errorMessage: state.message);
          } else if (state is NewesBooksSuccess) {
            return Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return   Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: BookListViewItem(bookModel: state.newestBooks[index], books: state.newestBooks,),
                  );
                },
              ),
              ),
            );
          } else {
            return   Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return   const Padding(
                  padding: EdgeInsets.only(bottom:10),
                  child: ShimmerBookListViewItem(),
                );
              },
            ),
            ),
                        );
          }
        },),
        ],
      ),
    );
  }
}


