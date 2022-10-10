import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:tasks/widgets/default_stars.dart';

import '../utils/app_color.dart';
import '../utils/image_manager.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';
import '../widgets/small_text.dart';

class ItemSlider extends StatelessWidget {
  const ItemSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 22.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.h),
            image: const DecorationImage(
              image: AssetImage(ImageManager.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(3.h),
            height: 15.h,
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(3.h),
              color: AppColor.kWhite,
              child: Container(
                height: 18.h,
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BigText(
                      text: "Chinese Side",
                      color: AppColor.kBlack,
                    ),
                    Row(
                      children: [
                        const DefaultStars(value: 5),
                        SizedBox(
                          width: 2.w,
                        ),
                        const SmallText(
                          text: "4.7",
                          color: AppColor.kGrey,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        const SmallText(
                          text: "1234",
                          color: AppColor.kGrey,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        const SmallText(
                          text: "Comments",
                          color: AppColor.kGrey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          color: AppColor.kIconColor1,
                          text: "Normal",
                        ),
                        IconAndTextWidget(
                          icon: Icons.location_on,
                          color: AppColor.kMain,
                          text: "1.7km",
                        ),
                        IconAndTextWidget(
                          icon: Icons.access_time_outlined,
                          color: AppColor.kIconColo2,
                          text: "Normal",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
