part of 'profile_bloc.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class TabInformasiDiri extends ProfileState {
  final int index;
  const TabInformasiDiri({this.index = 0});

  @override
  List<Object> get props => [index];
}
