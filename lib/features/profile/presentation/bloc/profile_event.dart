part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends ProfileEvent {
  final int index;
  const TabChange(this.index);

  @override
  List<Object> get props => [index];
}
