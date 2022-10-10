import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    Key? key,
    required this.text,
    required this.color,
    this.textSize,
    this.line,
  }) : super(key: key);
  final String text;
  final Color color;
  final int? line;
  final double? textSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: line ?? 1,
      style: GoogleFonts.cairo(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: textSize?.sp ?? 9.sp),
    );
  }
}
