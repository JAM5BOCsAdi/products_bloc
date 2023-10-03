import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pers_bottom_nav_bar_event.dart';
part 'pers_bottom_nav_bar_state.dart';

class PersBottomNavBarBloc extends Bloc<PersBottomNavBarEvent, PersBottomNavBarState> {
  PersBottomNavBarBloc() : super(PersBottomNavBarInitial()) {
    on<PersBottomNavBarEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
