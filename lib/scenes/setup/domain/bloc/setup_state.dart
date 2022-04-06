part of 'setup_bloc.dart';

abstract class SetupState {}

class SetupStateLoading extends SetupState {}

class SetupStateSuccess extends SetupState {}

class SetupStateFailure extends SetupState {
  final String error;

  SetupStateFailure(this.error);
}
