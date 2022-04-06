import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestorRerepostory {
  FirebaseFirestore get _store => FirebaseFirestore.instance;
  CollectionReference get users => _store.collection('users');
}
