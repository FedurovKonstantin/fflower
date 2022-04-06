part of 'setup_bloc.dart';

abstract class SetupEvent {}

class SetupStarted extends SetupEvent {
  final List<Initializable> initializableDependencies;

  SetupStarted(
    this.initializableDependencies,
  );
}
