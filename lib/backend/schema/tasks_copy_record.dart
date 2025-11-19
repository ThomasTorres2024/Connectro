import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksCopyRecord extends FirestoreRecord {
  TasksCopyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _created = snapshotData['created'] as DateTime?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _price = castToType<double>(snapshotData['Price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasksCopy');

  static Stream<TasksCopyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksCopyRecord.fromSnapshot(s));

  static Future<TasksCopyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksCopyRecord.fromSnapshot(s));

  static TasksCopyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TasksCopyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksCopyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksCopyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksCopyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksCopyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksCopyRecordData({
  String? title,
  String? details,
  DocumentReference? user,
  DateTime? created,
  int? quantity,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'details': details,
      'user': user,
      'created': created,
      'Quantity': quantity,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksCopyRecordDocumentEquality implements Equality<TasksCopyRecord> {
  const TasksCopyRecordDocumentEquality();

  @override
  bool equals(TasksCopyRecord? e1, TasksCopyRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.user == e2?.user &&
        e1?.created == e2?.created &&
        e1?.quantity == e2?.quantity &&
        e1?.price == e2?.price;
  }

  @override
  int hash(TasksCopyRecord? e) => const ListEquality()
      .hash([e?.title, e?.details, e?.user, e?.created, e?.quantity, e?.price]);

  @override
  bool isValidKey(Object? o) => o is TasksCopyRecord;
}
