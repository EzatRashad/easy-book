import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvvm_bookly/core/utils/styles.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';

import '../../model.dart';

Widget buildBoardItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Expanded(
            child: SvgPicture.asset(model.image),
          ),
          25.ph,
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: Styles.textStyle24,
          ),
          12.ph,
          Text(
            model.subTitle,
            textAlign: TextAlign.center,
            style: Styles.textStyle14,
          ),
        ],
      );
 