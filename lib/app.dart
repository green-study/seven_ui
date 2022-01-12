import 'package:flutter/material.dart';
import 'package:reink/load.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ReinkApp extends StatelessWidget {
  const ReinkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        title: 'Re-ink',
        home: BaseLayout(),
      ),

    );
  }
}
