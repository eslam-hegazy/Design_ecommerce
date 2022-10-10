import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:tasks/pages/home/main_food_page.dart';
import 'package:tasks/pages/home/shop_screen.dart';
import 'package:tasks/utils/app_color.dart';
import 'package:tasks/utils/image_manager.dart';
import 'package:tasks/widgets/big_text.dart';

import '../../View/bottom_details_screen.dart';
import '../../widgets/default_stars.dart';
import '../../widgets/expanded_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_button.dart';
import '../../widgets/small_text.dart';

class RecommendationFood extends StatelessWidget {
  String text =
      "Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.Akfix Fast 70 Mega Pu Gun Foam is a single-component, professional type, gun applicable PU foam. Cures swiftly with air humidity. Features higher volumetric yield, fast curing, reusability and easy application. It does not contain any propellant gases which are harmful to the ozone layer.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.kWhite,
        body: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 35.h,
                  centerTitle: true,
                  backgroundColor: AppColor.kMain,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageManager.testImage),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.only(left: 4.w),
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
                      padding: EdgeInsets.only(right: 4.w),
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
                                child: const SmallText(
                                  text: "0",
                                  color: AppColor.kWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                        press: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) {
                            return ShopScreen(
                                screenRoute: RecommendationFood());
                          }));
                        },
                      ),
                    ),
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(7.h),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(3.h),
                          topRight: Radius.circular(2.h),
                        ),
                      ),
                      padding: EdgeInsets.all(1.5.h),
                      child: const BigText(
                        text: "Chinese Side",
                        color: AppColor.kBlack,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
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
                          SizedBox(height: 3.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SmallButton(
                                icon: const Icon(Icons.remove,
                                    color: AppColor.kWhite),
                                press: () {},
                                backGround: AppColor.kMain,
                              ),
                              const BigText(
                                  text: "\$12.88 * 10", color: AppColor.kBlack),
                              SmallButton(
                                icon: const Icon(Icons.add,
                                    color: AppColor.kWhite),
                                press: () {},
                                backGround: AppColor.kMain,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ], //<Widget>[]
            ),
            Positioned(
              bottom: 0,
              child: Container(
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
                    Container(
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: AppColor.kMain,
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
              ),
            ),
          ],
        ) //CustonScrollView
        );
  }
}
