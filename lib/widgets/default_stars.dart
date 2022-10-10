import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class DefaultStars extends StatelessWidget {
  final int value;
  const DefaultStars({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        value,
        (index) => Icon(
          Icons.star,
          size: 2.h,
          color: AppColor.kMain,
        ),
      ),
    );
  }
}
