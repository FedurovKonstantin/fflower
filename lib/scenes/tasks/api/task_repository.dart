import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fminimal/scenes/auth/api/user_repository.dart';
import 'package:fminimal/scenes/setup/domain/bloc/setup_bloc.dart';

class TaskRepository {
  final FirebaseFirestore store;
  final UserRepository userRepository;

  TaskRepository({
    required this.store,
    required this.userRepository,
  });

  Future<void> getTasks(String userId) async {}
}
