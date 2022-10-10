import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:tasks/widgets/small_text.dart';

import '../utils/app_color.dart';
import '../widgets/big_text.dart';

class BottomDetailsScreen extends StatelessWidget {
  const BottomDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: AppColor.kGrey.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.h),
          topRight: Radius.circular(3.h),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Material(
            elevation: 6,
            borderRadius: BorderRadius.circular(7.h),
            child: Container(
              width: 30.w,
              height: 6.h,
              padding: EdgeInsets.all(1.5.h),
              decoration: BoxDecoration(
                color: AppColor.kWhite,
                borderRadius: BorderRadius.circular(7.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        print("-");
                      },
                      child: Icon(Icons.remove, size: 3.h)),
                  const BigText(text: "0", color: AppColor.kBlack),
                  InkWell(
                      onTap: () {
                        print("+");
                      },
                      child: Icon(Icons.add, size: 3.h)),
                ],
              ),
            ),
          ),
          MaterialButton(
            color: AppColor.kMain,
            padding: EdgeInsets.all(2.h),
            elevation: 2,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: const BorderSide(
                color: AppColor.kMain,
              ),
            ),
            onPressed: () {},
            child: const SmallText(
              textSize: 11,
              text: "\$0.08 Add To Card",
              color: AppColor.kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
