import 'package:equatable/equatable.dart';

class BottomNavigationState extends Equatable {
  const BottomNavigationState(int currentIndex);

  final int currentIndex = 0;

  BottomNavigationState copyWith({int? currentIndex}) {
    return BottomNavigationState(currentIndex ?? this.currentIndex);
  }

  @override
  List<Object?> get props => [currentIndex];
}
