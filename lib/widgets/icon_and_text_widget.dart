import 'package:flutter/cupertino.dart';

import 'package:sizer/sizer.dart';
import 'package:tasks/utils/app_color.dart';
import 'package:tasks/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color),
        SizedBox(width: 0.5.w),
        SmallText(text: text, color: AppColor.kGrey),
      ],
    );
  }
}
