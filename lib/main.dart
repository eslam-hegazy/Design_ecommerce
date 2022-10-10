import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:tasks/pages/home/main_food_page.dart';
import 'package:tasks/pages/home/main_screen.dart';
import 'package:tasks/pages/home/splash_screen.dart';

import 'cubit/MyBlocObserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}
