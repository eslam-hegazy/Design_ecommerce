import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tasks/widgets/small_button.dart';

import '../utils/app_color.dart';
import '../utils/image_manager.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';
import '../widgets/small_text.dart';

class ItemShop extends StatelessWidget {
  const ItemShop({Key? key}) : super(key: key);

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
                    borderRadius: BorderRadius.circular(2.h),
                    image: const DecorationImage(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const BigText(
                                text: "\$12.5", color: AppColor.kGrey),
                            Row(
                              children: [
                                SmallButton(
                                  size: 2,
                                  icon: Icon(
                                    Icons.remove,
                                    color: AppColor.kWhite,
                                    size: 2.h,
                                  ),
                                  press: () {},
                                  backGround: AppColor.kMain,
                                ),
                                SizedBox(width: 1.w),
                                const SmallText(
                                    text: '1', color: AppColor.kBlack),
                                SizedBox(width: 1.w),
                                SmallButton(
                                  size: 2,
                                  icon: Icon(
                                    size: 2.h,
                                    Icons.add,
                                    color: AppColor.kWhite,
                                  ),
                                  press: () {},
                                  backGround: AppColor.kMain,
                                ),
                              ],
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
