import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasks/View/item_popular.dart';
import 'package:tasks/View/item_slider.dart';
import 'package:tasks/pages/home/recommendation_food.dart';

import 'package:tasks/utils/app_color.dart';
import 'package:tasks/utils/image_manager.dart';
import 'package:tasks/widgets/big_text.dart';

import 'package:tasks/widgets/header_main_screen.dart';

import 'popular_food.dart';

class MainFoodPage extends StatefulWidget {
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderMainScreen(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 33.h,
                child: CarouselSlider.builder(
                  itemCount: 5,
                  options: CarouselOptions(
                    height: 40.h,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 10 / 9,
                    onPageChanged: (index, cr) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return RecommendationFood();
                      }));
                    },
                    child: const ItemSlider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: AnimatedSmoothIndicator(
                  activeIndex: _current,
                  count: 5,
                  effect: JumpingDotEffect(
                    dotHeight: 1.h,
                    dotWidth: 1.h,
                    jumpScale: .7,
                    verticalOffset: 20,
                    activeDotColor: AppColor.kMain,
                    dotColor: AppColor.kGrey,
                  ),
                ),
              ),
              const BigText(
                text: "Popular",
                color: AppColor.kBlack,
              ),
              SizedBox(height: 1.5.h),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) {
                          return PopularFood();
                        }));
                      },
                      child: const ItemPopular(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
