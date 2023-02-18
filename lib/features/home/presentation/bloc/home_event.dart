part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class SelectCategory extends HomeEvent {

  final int index;
   SelectCategory( this.index);
}
