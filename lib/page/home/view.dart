/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 11:29:56
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-13 13:49:13
 * @FilePath: /template/lib/page/home/view.dart
 * @Description: 
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/common/index.dart';
import 'package:template/page/home/bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    state.value.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () => AudioService().play(),
                    child: const Text(
                      "添加",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => AudioService().play(),
                    child: const Text(
                      "添加",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
