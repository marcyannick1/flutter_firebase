import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  CollectionReference codes = FirebaseFirestore.instance.collection('codes');

  Future<DocumentReference> createCode(String code) async {
    final DocumentReference documentReference = await codes.add({
      'code': code,
    });
    return documentReference;
  }

  Stream<QuerySnapshot> getCodes() {
    final getCodes = codes.snapshots();
    return getCodes;
  }
}
