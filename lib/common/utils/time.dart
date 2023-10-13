/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 16:47:18
 * @FilePath: /template/lib/common/utils/time.dart
 * @Description: 处理时间工具
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 时间工具类
/// @hint:
class TimeUtil {
  static const num ONE_MINUTE = 60000;
  static const num ONE_HOUR = 3600000;
  static const num ONE_DAY = 86400000;
  static const num ONE_WEEK = 604800000;

  static const String ONE_SECOND_AGO = "秒前"; // !注意多语言
  static const String ONE_MINUTE_AGO = "分钟前";
  static const String ONE_HOUR_AGO = "小时前";
  static const String ONE_DAY_AGO = "天前";
  static const String ONE_MONTH_AGO = "月前";
  static const String ONE_YEAR_AGO = "年前";

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description: 最近时间格式化
  /// @hint:
  /// @return {*}
  static String latestTimeFormat(int timestamp) {
    num delta = DateTime.now().millisecondsSinceEpoch - timestamp;
    if (delta < 1 * ONE_MINUTE) {
      num seconds = toSeconds(delta);
      return (seconds <= 0 ? 1 : seconds).toInt().toString() + ONE_SECOND_AGO;
    }
    if (delta < 45 * ONE_MINUTE) {
      num minutes = toMinutes(delta);
      return (minutes <= 0 ? 1 : minutes).toInt().toString() + ONE_MINUTE_AGO;
    }
    if (delta < 24 * ONE_HOUR) {
      num hours = toHours(delta);
      return (hours <= 0 ? 1 : hours).toInt().toString() + ONE_HOUR_AGO;
    }
    if (delta < 48 * ONE_HOUR) {
      return "昨天";
    }
    if (delta < 30 * ONE_DAY) {
      num days = toDays(delta);
      return (days <= 0 ? 1 : days).toInt().toString() + ONE_DAY_AGO;
    }
    if (delta < 12 * 4 * ONE_WEEK) {
      num months = toMonths(delta);
      return (months <= 0 ? 1 : months).toInt().toString() + ONE_MONTH_AGO;
    } else {
      num years = toYears(delta);
      return (years <= 0 ? 1 : years).toInt().toString() + ONE_YEAR_AGO;
    }
  }

  static num toSeconds(num date) {
    return date / 1000;
  }

  static num toMinutes(num date) {
    return toSeconds(date) / 60;
  }

  static num toHours(num date) {
    return toMinutes(date) / 60;
  }

  static num toDays(num date) {
    return toHours(date) / 24;
  }

  static num toMonths(num date) {
    return toDays(date) / 30;
  }

  static num toYears(num date) {
    return toMonths(date) / 365;
  }
}
