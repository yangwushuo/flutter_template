/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 16:28:44
 * @FilePath: /template/lib/common/routers/route_pages.dart
 * @Description: 路由配置
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:go_router/go_router.dart';
import 'package:template/page/index.dart';

import './index.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 页面路由
/// @hint:
class RoutePages {
  /// 路由配置
  static GoRouter router = GoRouter(
    // 初始化路由
    initialLocation: RoutePathMap.home,
    // 设置路由监听
    observers: [
      NavObserver(),
    ],
    // 路由信息表
    routes: [
      GoRoute(
        path: RoutePathMap.home,
        name: RouteNameMap.home,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
