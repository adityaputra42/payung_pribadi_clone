import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/staticImage/app_icon.dart';

part 'wellness_event.dart';
part 'wellness_state.dart';

class WellnessBloc extends Bloc<WellnessEvent, WellnessState> {
  WellnessBloc() : super(WellnessInitial()) {
    on<WellnessEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
