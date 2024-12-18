import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SectionsRecord extends FirestoreRecord {
  SectionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sectionType" field.
  String? _sectionType;
  String get sectionType => _sectionType ?? '';
  bool hasSectionType() => _sectionType != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  bool hasOrderNumber() => _orderNumber != null;

  void _initializeFields() {
    _sectionType = snapshotData['sectionType'] as String?;
    _name = snapshotData['name'] as String?;
    _height = castToType<double>(snapshotData['height']);
    _orderNumber = castToType<int>(snapshotData['orderNumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sections');

  static Stream<SectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SectionsRecord.fromSnapshot(s));

  static Future<SectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SectionsRecord.fromSnapshot(s));

  static SectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSectionsRecordData({
  String? sectionType,
  String? name,
  double? height,
  int? orderNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sectionType': sectionType,
      'name': name,
      'height': height,
      'orderNumber': orderNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SectionsRecordDocumentEquality implements Equality<SectionsRecord> {
  const SectionsRecordDocumentEquality();

  @override
  bool equals(SectionsRecord? e1, SectionsRecord? e2) {
    return e1?.sectionType == e2?.sectionType &&
        e1?.name == e2?.name &&
        e1?.height == e2?.height &&
        e1?.orderNumber == e2?.orderNumber;
  }

  @override
  int hash(SectionsRecord? e) => const ListEquality()
      .hash([e?.sectionType, e?.name, e?.height, e?.orderNumber]);

  @override
  bool isValidKey(Object? o) => o is SectionsRecord;
}
