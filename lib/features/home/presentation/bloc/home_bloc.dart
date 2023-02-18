import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
   int currentIndex = 0;
  HomeBloc() : super(HomeInitial()) {
    on<SelectCategory>((event, emit) {
       
      currentIndex = event.index;
     
      
      emit(SelectCategryState());
    });
  }
}
