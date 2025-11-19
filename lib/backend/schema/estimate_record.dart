import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstimateRecord extends FirestoreRecord {
  EstimateRecord._(
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

  // "client_name" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  // "client_email" field.
  String? _clientEmail;
  String get clientEmail => _clientEmail ?? '';
  bool hasClientEmail() => _clientEmail != null;

  // "client_phone" field.
  String? _clientPhone;
  String get clientPhone => _clientPhone ?? '';
  bool hasClientPhone() => _clientPhone != null;

  // "client_address" field.
  String? _clientAddress;
  String get clientAddress => _clientAddress ?? '';
  bool hasClientAddress() => _clientAddress != null;

  // "invoice_number" field.
  int? _invoiceNumber;
  int get invoiceNumber => _invoiceNumber ?? 0;
  bool hasInvoiceNumber() => _invoiceNumber != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "descriptions" field.
  List<String>? _descriptions;
  List<String> get descriptions => _descriptions ?? const [];
  bool hasDescriptions() => _descriptions != null;

  // "unit_price" field.
  List<double>? _unitPrice;
  List<double> get unitPrice => _unitPrice ?? const [];
  bool hasUnitPrice() => _unitPrice != null;

  // "unit_quantity" field.
  List<double>? _unitQuantity;
  List<double> get unitQuantity => _unitQuantity ?? const [];
  bool hasUnitQuantity() => _unitQuantity != null;

  // "payment_instructions" field.
  String? _paymentInstructions;
  String get paymentInstructions => _paymentInstructions ?? '';
  bool hasPaymentInstructions() => _paymentInstructions != null;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _companyEmail = snapshotData['company_email'] as String?;
    _companyPhone = snapshotData['company_phone'] as String?;
    _companyAddress = snapshotData['company_address'] as String?;
    _clientName = snapshotData['client_name'] as String?;
    _clientEmail = snapshotData['client_email'] as String?;
    _clientPhone = snapshotData['client_phone'] as String?;
    _clientAddress = snapshotData['client_address'] as String?;
    _invoiceNumber = castToType<int>(snapshotData['invoice_number']);
    _date = snapshotData['date'] as DateTime?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _descriptions = getDataList(snapshotData['descriptions']);
    _unitPrice = getDataList(snapshotData['unit_price']);
    _unitQuantity = getDataList(snapshotData['unit_quantity']);
    _paymentInstructions = snapshotData['payment_instructions'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estimate');

  static Stream<EstimateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstimateRecord.fromSnapshot(s));

  static Future<EstimateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstimateRecord.fromSnapshot(s));

  static EstimateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstimateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstimateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstimateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstimateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstimateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstimateRecordData({
  String? companyName,
  String? companyEmail,
  String? companyPhone,
  String? companyAddress,
  String? clientName,
  String? clientEmail,
  String? clientPhone,
  String? clientAddress,
  int? invoiceNumber,
  DateTime? date,
  DateTime? dueDate,
  String? paymentInstructions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'company_email': companyEmail,
      'company_phone': companyPhone,
      'company_address': companyAddress,
      'client_name': clientName,
      'client_email': clientEmail,
      'client_phone': clientPhone,
      'client_address': clientAddress,
      'invoice_number': invoiceNumber,
      'date': date,
      'due_date': dueDate,
      'payment_instructions': paymentInstructions,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstimateRecordDocumentEquality implements Equality<EstimateRecord> {
  const EstimateRecordDocumentEquality();

  @override
  bool equals(EstimateRecord? e1, EstimateRecord? e2) {
    const listEquality = ListEquality();
    return e1?.companyName == e2?.companyName &&
        e1?.companyEmail == e2?.companyEmail &&
        e1?.companyPhone == e2?.companyPhone &&
        e1?.companyAddress == e2?.companyAddress &&
        e1?.clientName == e2?.clientName &&
        e1?.clientEmail == e2?.clientEmail &&
        e1?.clientPhone == e2?.clientPhone &&
        e1?.clientAddress == e2?.clientAddress &&
        e1?.invoiceNumber == e2?.invoiceNumber &&
        e1?.date == e2?.date &&
        e1?.dueDate == e2?.dueDate &&
        listEquality.equals(e1?.descriptions, e2?.descriptions) &&
        listEquality.equals(e1?.unitPrice, e2?.unitPrice) &&
        listEquality.equals(e1?.unitQuantity, e2?.unitQuantity) &&
        e1?.paymentInstructions == e2?.paymentInstructions;
  }

  @override
  int hash(EstimateRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.companyEmail,
        e?.companyPhone,
        e?.companyAddress,
        e?.clientName,
        e?.clientEmail,
        e?.clientPhone,
        e?.clientAddress,
        e?.invoiceNumber,
        e?.date,
        e?.dueDate,
        e?.descriptions,
        e?.unitPrice,
        e?.unitQuantity,
        e?.paymentInstructions
      ]);

  @override
  bool isValidKey(Object? o) => o is EstimateRecord;
}
