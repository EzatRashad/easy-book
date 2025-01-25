import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class DetailsRating extends StatelessWidget {
  const DetailsRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(245)',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}