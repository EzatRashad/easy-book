import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_bookly/Features/search/presentation/manager/search_cubit/search_states.dart';
import 'package:mvvm_bookly/Features/search/presentation/views/widgets/search_itemlist_view.dart';
import 'package:mvvm_bookly/Features/search/presentation/views/widgets/search_loading_list_view.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';

import '../../manager/search_cubit/search_cubit.dart';  

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 70,
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
  textController.clear();
                  context.read<SearchCubit>().getSearchBooks('');                              

      }, icon: const Icon(FontAwesomeIcons.arrowLeft)),
      title: Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextFormField(
            controller: textController,
            onChanged: (query) {
              context.read<SearchCubit>().getSearchBooks( query);
            },
            decoration: InputDecoration(
              hintText:  "Search",
               
              prefixIcon: IconButton(
                onPressed: () {
                  textController.clear();
                  context.read<SearchCubit>().getSearchBooks('');
                },
                icon: const Icon(Icons.close, color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:   const BorderSide(color: AppColors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:   const BorderSide(color: AppColors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    ),
    body: BlocBuilder<SearchCubit, SearchBooksStates>(
      builder: (context, state) {
        if (state is SearchBooksInitial) {
          return   const Center(child: Text("Search for books"));
        } else if (state is SearchBooksLoading) {
          return const SearchLoadingListView();
        } else if (state is SearchBooksSuccess) {
          if (state.books.isEmpty) {
            return const Center(child: Text("No results found."));
          }
          return SearchItemlistView(books: state.books);
        } else if (state is SearchBooksError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.message),
                ElevatedButton(
                  onPressed: () {
                    context.read<SearchCubit>().getSearchBooks(textController.text);
                  },
                  child: const Center(child: Text("Retry")),
                ),
              ],
            ),
          );
        } else if (state is SearchEmpty) {
          return   const Center(child: Center(child: Text("Search for books")));  
        }
        return const SizedBox.shrink();
      },
    ),
        );
  }
}
