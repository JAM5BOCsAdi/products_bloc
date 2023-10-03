import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:products_bloc/src/presentation/blocs/persistent_bottom_nav_bar/enum.dart';

part 'pers_bottom_nav_bar_event.dart';
part 'pers_bottom_nav_bar_state.dart';

class PersBottomNavBarBloc extends Bloc<PersBottomNavBarEvent, PersBottomNavBarState> {
  PersBottomNavBarBloc() : super(const PersBottomNavBarItemsState(index: 0, item: PersBottomNavBarItems.feed)) {
    on<PersBottomNavBarChangeScreenEvent>((event, emit) {
      emit(PersBottomNavBarItemsState(index: event.index, item: event.item));
    });
  }
}
