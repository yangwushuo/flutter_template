/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 11:22:12
 * @FilePath: /template/lib/common/routers/route_observers.dart
 * @Description: 页面路由监听
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:flutter/material.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 页面路由监听
/// @hint:
class NavObserver extends NavigatorObserver {
  void log(value) => debugPrint('MyNavObserver:$value');

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 路由入栈触发
  /// @hint:
  /// @return {*}
  @override
  void didPush(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    log('didPush: ${route.toString()}, previousRoute= ${previousRoute?.toString()}');
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 路由出栈触发
  /// @hint:
  /// @return {*}
  @override
  void didPop(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    log('didPop: ${route.toString()}, previousRoute= ${previousRoute?.toString()}');
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 路由移除触发
  /// @hint:
  /// @return {*}
  @override
  void didRemove(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    log('didRemove: ${route.toString()}, previousRoute= ${previousRoute?.toString()}');
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 路由重置触发
  /// @hint:
  /// @return {*}
  @override
  void didReplace({
    Route<dynamic>? newRoute,
    Route<dynamic>? oldRoute,
  }) {
    log('didReplace: new= ${newRoute?.toString()}, old= ${oldRoute?.toString()}');
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 开始用户手势
  /// @hint:
  /// @return {*}
  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    log('didStartUserGesture: ${route.toString()}, '
        'previousRoute= ${previousRoute?.toString()}');
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 停止用户手势
  /// @hint:
  /// @return {*}
  @override
  void didStopUserGesture() {
    log('didStopUserGesture');
  }
}
