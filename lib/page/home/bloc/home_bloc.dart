/*
 * @Author: 杨武硕
 * @Date: 2023-10-11 14:06:41
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-11 16:10:45
 * @FilePath: /template/lib/page/home/bloc/home_bloc.dart
 * @Description: 
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int counterNum = 0;

  HomeBloc() : super(const HomeInitial(0)) {
    on<AddNum>(
      (event, emit) {
        emit(HomeChange(state.value + event.value));
      },
    );
  }

  @override
  void onChange(Change<HomeState> change) {
    super.onChange(change);
    print("状态发生改变");
  }

  @override
  void onTransition(Transition<HomeEvent, HomeState> transition) {
    super.onTransition(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}
