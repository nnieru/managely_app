import 'package:bloc/bloc.dart';
import 'package:managely/pages/home/bloc/bottom_navigation/bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState(0));

  void changeTab(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
