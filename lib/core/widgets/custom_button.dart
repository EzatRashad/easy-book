import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';

import '/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
     this.backgroundColor,
     this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize, this.height, this.width, this.textStyle, this.onPressed,
  });
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height?? 26.h,
      width:width?? 87.w,
      child: TextButton(
        onPressed: onPressed??() {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor??AppColors.secondtColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  12,
                ),
          ),
        ),
        child: Text(
          text,
          style:textStyle?? Styles.textStyle18.copyWith(
            color: AppColors.backLight,
            fontWeight: FontWeight.w700,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
