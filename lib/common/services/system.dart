/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 11:20:17
 * @FilePath: /template/lib/common/services/system.dart
 * @Description: 
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */
import 'package:flutter/services.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 系统服务
/// @hint:
class SystemService {
  static final SystemService _instance = SystemService._internal();
  factory SystemService() => _instance;

  SystemService._internal();

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: light震动
  /// @hint:
  /// @return {*}
  void lightShock() async {
    HapticFeedback.lightImpact();
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: medium震动
  /// @hint:
  /// @return {*}
  void mediumShock() async {
    HapticFeedback.mediumImpact();
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: heavy震动
  /// @hint:
  /// @return {*}
  void heavyShock() async {
    HapticFeedback.heavyImpact();
  }
}
