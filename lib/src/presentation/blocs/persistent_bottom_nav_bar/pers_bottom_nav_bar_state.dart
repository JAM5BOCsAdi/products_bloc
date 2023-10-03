part of 'pers_bottom_nav_bar_bloc.dart';

@immutable
abstract class PersBottomNavBarState extends Equatable {
  const PersBottomNavBarState();
}

class PersBottomNavBarItemsState extends PersBottomNavBarState {
  final int index;
  final PersBottomNavBarItems item;

  const PersBottomNavBarItemsState({
    required this.index,
    required this.item,
  });

  @override
  List<Object> get props => [index, item];

  @override
  String toString() => 'PersBottomNavBarItemsState: $index';
}
