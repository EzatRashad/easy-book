import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCustomBookImage extends StatelessWidget {
  const LoadingCustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}