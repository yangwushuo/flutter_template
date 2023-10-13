part of 'home_bloc.dart';

@immutable
sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class AddNum extends HomeEvent {
  final int value;

  const AddNum(this.value);

  @override
  List<Object?> get props => [value];
}
