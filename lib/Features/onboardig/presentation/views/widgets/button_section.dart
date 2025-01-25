import 'package:flutter/material.dart';
import 'package:mvvm_bookly/Features/onboardig/presentation/model.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.boardControllar, required this.submit});
final PageController boardControllar;
final Function submit;
  @override
  Widget build(BuildContext context) {
    return   Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: boardControllar,
                  count: board.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor:AppColors.secondtColor,
                    dotHeight: 11,
                    dotWidth: 10,
                    spacing: 5,
                    expansionFactor: 4,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                  submit();
                  },
                  backgroundColor: AppColors.secondtColor,
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            );
  }
}