import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:tasks/View/bottom_details_screen.dart';
import 'package:tasks/pages/home/shop_screen.dart';

import 'package:tasks/utils/app_color.dart';
import 'package:tasks/utils/image_manager.dart';
import 'package:tasks/widgets/default_stars.dart';
import 'package:tasks/widgets/expanded_text.dart';
import 'package:tasks/widgets/small_button.dart';
import 'package:tasks/widgets/small_text.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import 'main_food_page.dart';

class PopularFood extends StatelessWidget {
  String text =
      "Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.";
  String tt =
      "Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.all(1.h),
          child: SmallButton(
            backGround: AppColor.kWhite.withOpacity(0.6),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 2.h,
              color: AppColor.kBlack,
            ),
            press: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                return MainFoodPage();
              }));
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(1.2.h),
            child: SmallButton(
              backGround: AppColor.kWhite.withOpacity(0.6),
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  const Icon(Icons.shopify, color: AppColor.kBlack),
                  Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: AppColor.kMain,
                      radius: 1.h,
                      child: const SmallText(text: "0", color: AppColor.kWhite),
                    ),
                  ),
                ],
              ),
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return ShopScreen(
                    screenRoute: PopularFood(),
                  );
                }));
              },
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 45.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageManager.testImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 62.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.h),
                    topRight: Radius.circular(3.h)),
                color: AppColor.kWhite,
              ),
              child: Padding(
                padding: EdgeInsets.all(4.h),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BigText(
                        text: "Chinese Side",
                        color: AppColor.kBlack,
                      ),
                      SizedBox(height: 1.5.h),
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
                            width: 4.w,
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
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      SizedBox(height: 2.h),
                      const BigText(
                        text: "Introduce",
                        color: AppColor.kBlack,
                      ),
                      SizedBox(height: 1.h),
                      ExpandedText(text: text),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 34.h,
            right: 4.h,
            child: FloatingActionButton(
              backgroundColor: AppColor.kMain,
              child: const Icon(
                Icons.favorite,
              ),
              onPressed: () {},
            ),
          ),
          const Positioned(
            bottom: 0,
            child: BottomDetailsScreen(),
          ),
        ],
      ),
    );
  }
}
