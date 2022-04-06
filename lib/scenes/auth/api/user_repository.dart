import 'dart:developer';

import 'package:fminimal/common/api/firebase_firestore_repository.dart';
import 'package:fminimal/common/api/shared_prefs_repository.dart';
import 'package:fminimal/scenes/auth/domain/user.dart';

class UserRepository {
  final SharedPrefsRepository localRep;
  final FirebaseFirestorRerepostory remoteRep;
  User? currentUser;

  UserRepository({
    required this.localRep,
    required this.remoteRep,
  });

  Future<void> signUp(String name) async {
    await localRep.prefs.setString('name', name);
  }

  Future<User?> signInOnEnter() async {
    final name = localRep.prefs.getString("name");
    if (name == null) {
      return null;
    }
    return signIn(name);
  }

  Future<User?> signIn(String name) async {
    final document = await remoteRep.users.doc(name).get();
    if (document.exists) {
      currentUser = User.fromJson(
        document.data() as Map<String, dynamic>,
      );
      return currentUser;
    }
    await signUp(name);
    return null;
  }
}
