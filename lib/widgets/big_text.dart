import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class BigText extends StatelessWidget {
  const BigText({
    Key? key,
    required this.text,
    required this.color,
    this.line,
    this.textSize,
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
      style: GoogleFonts.roboto(
        fontSize: textSize?.sp ?? 15.sp,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
