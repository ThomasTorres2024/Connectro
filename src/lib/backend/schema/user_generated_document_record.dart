import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// document user generated
class UserGeneratedDocumentRecord extends FirestoreRecord {
  UserGeneratedDocumentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "document_name" field.
  String? _documentName;
  String get documentName => _documentName ?? '';
  bool hasDocumentName() => _documentName != null;

  void _initializeFields() {
    _documentName = snapshotData['document_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_generated_document');

  static Stream<UserGeneratedDocumentRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UserGeneratedDocumentRecord.fromSnapshot(s));

  static Future<UserGeneratedDocumentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserGeneratedDocumentRecord.fromSnapshot(s));

  static UserGeneratedDocumentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserGeneratedDocumentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserGeneratedDocumentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserGeneratedDocumentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserGeneratedDocumentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserGeneratedDocumentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserGeneratedDocumentRecordData({
  String? documentName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'document_name': documentName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserGeneratedDocumentRecordDocumentEquality
    implements Equality<UserGeneratedDocumentRecord> {
  const UserGeneratedDocumentRecordDocumentEquality();

  @override
  bool equals(
      UserGeneratedDocumentRecord? e1, UserGeneratedDocumentRecord? e2) {
    return e1?.documentName == e2?.documentName;
  }

  @override
  int hash(UserGeneratedDocumentRecord? e) =>
      const ListEquality().hash([e?.documentName]);

  @override
  bool isValidKey(Object? o) => o is UserGeneratedDocumentRecord;
}
