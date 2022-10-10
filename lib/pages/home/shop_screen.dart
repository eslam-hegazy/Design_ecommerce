import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:tasks/View/item_shop.dart';

import 'package:tasks/pages/home/main_food_page.dart';
import 'package:tasks/utils/app_color.dart';
import 'package:tasks/widgets/big_text.dart';
import 'package:tasks/widgets/small_button.dart';

import '../../widgets/small_text.dart';

class ShopScreen extends StatelessWidget {
  final Widget screenRoute;
  const ShopScreen({
    Key? key,
    required this.screenRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite,
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        centerTitle: true,
        title: const BigText(text: "Shopping", color: AppColor.kBlack),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: SmallButton(
              icon: const Icon(
                Icons.home,
                color: AppColor.kWhite,
              ),
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return MainFoodPage();
                }));
              },
              backGround: AppColor.kBlack,
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: SmallButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColor.kWhite,
            ),
            press: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                return screenRoute;
              }));
            },
            backGround: AppColor.kBlack,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(1.5.h),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ItemShop();
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 11.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: AppColor.kBlack.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.h),
                  topRight: Radius.circular(3.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(2.h),
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    child:
                        const BigText(text: "\$ 38.55", color: AppColor.kBlack),
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
                    child: const BigText(
                      text: "Check Out",
                      color: AppColor.kWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
