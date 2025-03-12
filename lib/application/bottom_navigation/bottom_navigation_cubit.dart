import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_cubit.freezed.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationState.initial());

  void setIndex(int index) {
    emit(state.copyWith(index: index));
  }
}
