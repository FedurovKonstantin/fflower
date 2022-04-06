import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';

part 'setup_event.dart';
part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  SetupBloc() : super(SetupStateLoading()) {
    on<SetupStarted>(
      setupStartedHandler,
    );
  }
  List<Initializable>? _initializableDependencies;

  Future<void> setupStartedHandler(
    SetupStarted event,
    Emitter<SetupState> emit,
  ) async {
    _initializableDependencies = event.initializableDependencies;

    try {
      _initializableDependencies?.forEach(
        (dep) async {
          await dep.init();
        },
      );
    } on Exception catch (e) {
      emit(SetupStateFailure(e.toString()));
    }
  }

  @override
  Future<void> close() async {
    super.close();
    try {
      _initializableDependencies?.forEach((dep) async {
        await dep.dispose();
      });
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}

abstract class Initializable {
  FutureOr<void> init();

  FutureOr<void> dispose();
}
