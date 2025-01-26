import 'package:flutter/material.dart';
import 'package:mvvm_bookly/Features/home/data/model/book_model.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
            Expanded(
              child: CustomButton(
            height: 35,
            text:                           book.saleInfo!.retailPrice?.amount.toString()??"Free",
            backgroundColor: AppColors.primaryColor,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
           Expanded(
              child: CustomButton(
            height: 35,
            fontSize: 16,
            text: book.volumeInfo!.previewLink!= null?'Free Preview':"Not Available",
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            onPressed: () async {
                 Uri url = Uri.parse(book.volumeInfo!.previewLink??"");
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
               }else{
                 print("Could not launch $url");
               }
            },
          )),
        ],
      ),
    );
  }
}
