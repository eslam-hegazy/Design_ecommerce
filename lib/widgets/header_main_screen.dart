import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tasks/utils/app_color.dart';
import 'package:tasks/widgets/big_text.dart';
import 'package:tasks/widgets/small_text.dart';

class HeaderMainScreen extends StatelessWidget {
  const HeaderMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigText(text: "Egypt", color: AppColor.kMain),
            Row(
              children: const [
                SmallText(text: "Alexandria", color: AppColor.kBlack),
                Icon(
                  Icons.arrow_drop_down,
                  color: AppColor.kGrey,
                )
              ],
            ),
          ],
        ),
        Card(
          elevation: 5,
          color: AppColor.kMain,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
