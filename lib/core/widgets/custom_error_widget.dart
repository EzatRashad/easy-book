import 'package:flutter/material.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 50,
            color: Colors.red,
          ),
          10.ph,
          Text(
            errorMessage,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
