import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class SmallButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback press;
  final Color backGround;
  final double? size;
  const SmallButton({
    Key? key,
    required this.icon,
    required this.press,
    required this.backGround,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: CircleAvatar(
        radius: size?.h ?? 2.5.h,
        backgroundColor: backGround,
        child: icon,
      ),
    );
  }
}
