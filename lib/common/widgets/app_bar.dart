/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 10:43:15
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 10:44:48
 * @FilePath: /template/lib/common/widgets/app_bar.dart
 * @Description: 
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/common/index.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 自定义appbar
/// @hint:
class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  /// 背景颜色
  final Color backgroundColor;

  /// 左侧组件
  final Widget? leftChild;

  /// 左侧点击事件
  final GestureTapCallback? leftChildOnTap;

  /// 中间组件
  final Widget? centerChild;

  /// 中间点击事件
  final GestureTapCallback? centerChildOnTap;

  /// 右侧组件
  final Widget? rightChild;

  /// 右击点击事件
  final GestureTapCallback? rightChildOnTap;

  const MyAppBar({
    super.key,
    this.backgroundColor = Colors.white,
    this.leftChild,
    this.centerChild,
    this.rightChild,
    this.leftChildOnTap,
    this.centerChildOnTap,
    this.rightChildOnTap,
  });

  @override
  State<StatefulWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}

class _AppBarWidgetState extends State<MyAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 安全距离
    var topSafeArea = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: topSafeArea.sp, left: 16.sp, right: 16.sp),
      width: double.infinity,
      height: topSafeArea.sp + AppSpace.topAppBarHeight.sp,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: widget.leftChildOnTap,
                child: widget.leftChild,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: widget.centerChildOnTap,
                child: widget.centerChild,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: widget.rightChildOnTap,
                child: widget.rightChild,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
