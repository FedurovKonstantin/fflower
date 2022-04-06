import 'dart:async';

import 'package:fminimal/scenes/setup/domain/bloc/setup_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsRepository extends Initializable {
  late final SharedPreferences prefs;

  @override
  FutureOr<void> dispose() {}

  @override
  FutureOr<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}
