/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:39:52
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-13 13:45:47
 * @FilePath: /template/lib/global_init.dart
 * @Description: 应用初始化
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:template/common/index.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 全局初始化
/// @hint:
class GlobalInit {
  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 初始化入口
  /// @hint:
  /// @return void
  static Future<void> init() async {
    systemLevelInit();
    blocObserver();
    await appLevelInit();
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 系统级别初始化
  /// @hint:
  /// @return void
  static void systemLevelInit() {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // 初始化开屏图片
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 应用级别初始化
  /// @hint:
  /// @return
  static Future<void> appLevelInit() async {
    // 初始化日志
    await MyLogger.init();
    // 初始化本地存储
    await Storage().init();
    // 系统服务
    SystemService();
    // 音频服务
    AudioService();
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: bloc观察者创建
  /// @hint:
  /// @return {*}
  static void blocObserver() {
    const GlobalBlocObserver();
  }
}
