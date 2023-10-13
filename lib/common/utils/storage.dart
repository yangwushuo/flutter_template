/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 16:48:10
 * @FilePath: /template/lib/common/utils/storage.dart
 * @Description: 本地数据库存储
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:shared_preferences/shared_preferences.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 本地存储
/// @hint:
class Storage {
  static final Storage _instance = Storage._internal();
  factory Storage() => _instance;
  late final SharedPreferences _prefs;

  Storage._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool> setList(String key, List<String> value) async {
    return await _prefs.setStringList(key, value);
  }

  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  List<String> getList(String key) {
    return _prefs.getStringList(key) ?? [];
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }
}
