<!--
 * @Author: 杨武硕
 * @Date: 2023-10-11 09:29:50
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-13 11:10:15
 * @FilePath: /template/README.md
 * @Description: 
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
-->
# Flutter 项目模板

这是一个用于快速启动 Flutter 应用开发项目模板。它提供了一个结构良好的起点，帮助你快速构建和部署 Flutter 应用程序。

## 特性

- 清晰的项目结构：项目采用模块化结构，便于组织和维护代码。
- 集成常用库和工具：包括状态管理、网络请求、路由管理等 Flutter 生态系统中常用的工具和库。
- CI/CD 集成：自动化构建和持续集成/持续交付流程，使你的应用更容易部署到不同平台。
- 主题和样式：预定义的主题和样式，帮助你快速实现应用的一致外观。
- 国际化支持：内置的国际化工具，以便轻松本地化你的应用。

## 目录结构

lib
├─ global_init.dart
├─ main.dart
├─ common
│  ├─ index.dart
│  ├─ widgets
│  │  ├─ index.dart
│  │  └─ app_bar.dart
│  ├─ services
│  │  ├─ index.dart
│  │  ├─ system.dart
│  │  ├─ config.dart
│  │  ├─ http.dart
│  │  └─ bloc_observer.dart
│  ├─ i18n
│  │  └─ index.dart
│  ├─ style
│  │  ├─ index.dart
│  │  ├─ color.dart
│  │  └─ space_style.dart
│  ├─ utils
│  │  ├─ index.dart
│  │  ├─ storage.dart
│  │  ├─ time.dart
│  │  └─ logger.dart
│  ├─ values
│  │  ├─ index.dart
│  │  ├─ images.dart
│  │  └─ app_info.dart
│  └─ routers
│     ├─ index.dart
│     ├─ route_observers.dart
│     ├─ route_pages.dart
│     └─ route_map.dart
└─ page
   ├─ index.dart
   ├─ main
   │  ├─ index.dart
   │  ├─ page.dart
   │  ├─ view.dart
   │  └─ bloc
   │     ├─ main_state.dart
   │     ├─ main_event.dart
   │     └─ main_bloc.dart
   └─ home
      ├─ index.dart
      ├─ page.dart
      ├─ view.dart
      └─ bloc
         ├─ home_state.dart
         ├─ home_bloc.dart
         └─ home_event.dart


## 插件使用

flutter_native_splash: ^2.3.1 # 开屏图片
dio: ^5.3.2 # 网络请求
logger: ^1.3.0 # 日志
flutter_secure_storage: ^8.0.0 
shared_preferences: ^2.2.0 # 本地存储
date_format: ^2.0.7 # 日期格式化
decimal: ^2.3.2 # 精度
flutter_screenutil: ^5.8.4 # 自适应尺寸
go_router: ^10.0.0 # 路由管理
provider: ^6.0.5 # 状态管理
carousel_slider: ^4.2.1 # 轮播图
video_player: ^2.7.2 # 视频播放
step_progress_indicator: ^1.0.2 # 进度指示器
bloc: ^8.1.2
flutter_bloc: ^8.1.2  # blog 业务
equatable: ^2.0.5 # 类比较

## 快速开始

1. **克隆仓库**：

   ```bash
   git clone https://github.com/yangwushuo/flutter_template.git
