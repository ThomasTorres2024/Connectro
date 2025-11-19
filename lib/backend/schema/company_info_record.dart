import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyInfoRecord extends FirestoreRecord {
  CompanyInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_email" field.
  String? _companyEmail;
  String get companyEmail => _companyEmail ?? '';
  bool hasCompanyEmail() => _companyEmail != null;

  // "company_phone" field.
  String? _companyPhone;
  String get companyPhone => _companyPhone ?? '';
  bool hasCompanyPhone() => _companyPhone != null;

  // "company_address" field.
  String? _companyAddress;
  String get companyAddress => _companyAddress ?? '';
  bool hasCompanyAddress() => _companyAddress != null;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _companyEmail = snapshotData['company_email'] as String?;
    _companyPhone = snapshotData['company_phone'] as String?;
    _companyAddress = snapshotData['company_address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company_info');

  static Stream<CompanyInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyInfoRecord.fromSnapshot(s));

  static Future<CompanyInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyInfoRecord.fromSnapshot(s));

  static CompanyInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyInfoRecordData({
  String? companyName,
  String? companyEmail,
  String? companyPhone,
  String? companyAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'company_email': companyEmail,
      'company_phone': companyPhone,
      'company_address': companyAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyInfoRecordDocumentEquality implements Equality<CompanyInfoRecord> {
  const CompanyInfoRecordDocumentEquality();

  @override
  bool equals(CompanyInfoRecord? e1, CompanyInfoRecord? e2) {
    return e1?.companyName == e2?.companyName &&
        e1?.companyEmail == e2?.companyEmail &&
        e1?.companyPhone == e2?.companyPhone &&
        e1?.companyAddress == e2?.companyAddress;
  }

  @override
  int hash(CompanyInfoRecord? e) => const ListEquality().hash(
      [e?.companyName, e?.companyEmail, e?.companyPhone, e?.companyAddress]);

  @override
  bool isValidKey(Object? o) => o is CompanyInfoRecord;
}
