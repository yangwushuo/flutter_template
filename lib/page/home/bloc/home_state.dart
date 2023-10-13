part of 'home_bloc.dart';

@immutable
sealed class HomeState extends Equatable {
  final int value;

  const HomeState(this.value);

  @override
  List<Object?> get props => [value];
}

/// 状态初始化
final class HomeInitial extends HomeState {
  const HomeInitial(super.value);
}

/// 状态改变
final class HomeChange extends HomeState {
  const HomeChange(super.value);
}
