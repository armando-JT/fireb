import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParametersRecord extends FirestoreRecord {
  ParametersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "script" field.
  String? _script;
  String get script => _script ?? '';
  bool hasScript() => _script != null;

  // "dataType" field.
  String? _dataType;
  String get dataType => _dataType ?? '';
  bool hasDataType() => _dataType != null;

  // "testValue" field.
  String? _testValue;
  String get testValue => _testValue ?? '';
  bool hasTestValue() => _testValue != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _name = snapshotData['name'] as String?;
    _script = snapshotData['script'] as String?;
    _dataType = snapshotData['dataType'] as String?;
    _testValue = snapshotData['testValue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parameters');

  static Stream<ParametersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParametersRecord.fromSnapshot(s));

  static Future<ParametersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParametersRecord.fromSnapshot(s));

  static ParametersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParametersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParametersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParametersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParametersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParametersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParametersRecordData({
  int? id,
  String? name,
  String? script,
  String? dataType,
  String? testValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'script': script,
      'dataType': dataType,
      'testValue': testValue,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParametersRecordDocumentEquality implements Equality<ParametersRecord> {
  const ParametersRecordDocumentEquality();

  @override
  bool equals(ParametersRecord? e1, ParametersRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.script == e2?.script &&
        e1?.dataType == e2?.dataType &&
        e1?.testValue == e2?.testValue;
  }

  @override
  int hash(ParametersRecord? e) => const ListEquality()
      .hash([e?.id, e?.name, e?.script, e?.dataType, e?.testValue]);

  @override
  bool isValidKey(Object? o) => o is ParametersRecord;
}
