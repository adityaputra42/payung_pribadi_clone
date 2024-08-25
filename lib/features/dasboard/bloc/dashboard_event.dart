part of 'dashboard_bloc.dart';

sealed class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends DashboardEvent {
  final int index;
  const TabChange(this.index);

  @override
  List<Object> get props => [index];
}

class ChangeExpand extends DashboardEvent {
  final bool value;
  const ChangeExpand(this.value);

  @override
  List<Object> get props => [value];
}
