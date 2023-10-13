/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 16:37:25
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 16:43:09
 * @FilePath: /template/lib/common/services/bloc_observer.dart
 * @Description: 观察全局bloc业务处理情况
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */
import 'package:flutter_bloc/flutter_bloc.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description:
/// @hint:
class GlobalBlocObserver extends BlocObserver {
  const GlobalBlocObserver();

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description:
  /// @hint:
  /// @return {*}
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    print('数据发生改变${bloc.runtimeType} $change');
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description:
  /// @hint:
  /// @return {*}
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description:
  /// @hint:
  /// @return {*}
  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description:
  /// @hint:
  /// @return {*}
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description:
  /// @hint:
  /// @return {*}
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  /// @author: 杨武硕
  /// @version: 1.0.0+1
  /// @description:
  /// @hint:
  /// @return {*}
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}
