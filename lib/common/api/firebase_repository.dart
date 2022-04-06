import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:fminimal/scenes/setup/domain/bloc/setup_bloc.dart';

class FirebaseRepository extends Initializable {
  @override
  FutureOr<void> dispose() {}

  @override
  FutureOr<void> init() async {
    await Firebase.initializeApp();
  }
}
