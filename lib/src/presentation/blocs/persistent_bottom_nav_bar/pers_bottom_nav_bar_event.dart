part of 'pers_bottom_nav_bar_bloc.dart';

abstract class PersBottomNavBarEvent extends Equatable {
  const PersBottomNavBarEvent();
}

class PersBottomNavBarChangeScreenEvent extends PersBottomNavBarEvent {
  final int index;
  final PersBottomNavBarItems item;

  const PersBottomNavBarChangeScreenEvent({
    required this.index,
    required this.item,
  });

  @override
  List<Object> get props => [index, item];

  @override
  String toString() => 'Screen Changed: $index';
}
