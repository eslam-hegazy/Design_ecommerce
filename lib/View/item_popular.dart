import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';
import '../utils/image_manager.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';
import '../widgets/small_text.dart';

class ItemPopular extends StatelessWidget {
  const ItemPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.5.h),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(2.h),
        child: Container(
          height: 15.h,
          decoration: BoxDecoration(
            color: AppColor.kWhite,
            borderRadius: BorderRadius.circular(2.h),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.h),
                      bottomLeft: Radius.circular(2.h),
                    ),
                    image: DecorationImage(
                      image: AssetImage(ImageManager.testImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BigText(
                          text: "Chinese Side",
                          color: AppColor.kBlack,
                        ),
                        const SmallText(
                          text: "This Food is Chaines",
                          color: AppColor.kGrey,
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
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
