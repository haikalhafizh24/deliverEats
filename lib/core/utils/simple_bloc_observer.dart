// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:deliver_eats/core/injection/injection.dart';
import 'package:logger/logger.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate Bloc-- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    getIt<Logger>().i('onEvent Bloc \n $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    getIt<Logger>().d('onChange Bloc CurrentState \n ${change.currentState}');
    getIt<Logger>().w('onChange Bloc NextState \n ${change.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    getIt<Logger>().e('onError Bloc-- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose Bloc-- ${bloc.runtimeType}');
  }
}
