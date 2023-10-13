/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 16:51:07
 * @FilePath: /template/lib/common/utils/logger.dart
 * @Description: 日志使用
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:logger/logger.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 日志使用
/// @hint:
class MyLogger {
  static late Logger _logger;

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 初始化日志工具
  /// @hint:
  /// @return {*}
  static Future<void> init() async {
    _logger = Logger();
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 调试
  /// @hint:
  /// @return {*}
  static void debugLog(String info) {
    _logger.d(info);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 信息
  /// @hint:
  /// @return {*}
  static void infoLog(String info) {
    _logger.i(info);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 错误
  /// @hint:
  /// @return {*}
  static void errorLog(String info) {
    _logger.e(info);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 警告
  /// @hint:
  /// @return {*}
  static void warnLog(String info) {
    _logger.w(info);
  }
}
