/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 09:29:50
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-13 09:26:32
 * @FilePath: /template/lib/main.dart
 * @Description: 主入口
 * @Hint: 
 *     1. 版本迭代需要修改file_header方法的版本信息
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/common/index.dart';
import 'package:template/global_init.dart';

void main() async {
  await GlobalInit.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852), // 宽高必须符合设计稿
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppInfo.appName,
          theme: darkThemeData,
          // TODO darkTheme: darkThemeData,
          routerConfig: RoutePages.router,
        );
      },
    );
  }
}
