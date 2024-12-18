import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSetFieldsRecord extends FirestoreRecord {
  DataSetFieldsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "dataType" field.
  String? _dataType;
  String get dataType => _dataType ?? '';
  bool hasDataType() => _dataType != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _dataType = snapshotData['dataType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dataSet_fields');

  static Stream<DataSetFieldsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataSetFieldsRecord.fromSnapshot(s));

  static Future<DataSetFieldsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataSetFieldsRecord.fromSnapshot(s));

  static DataSetFieldsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataSetFieldsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataSetFieldsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataSetFieldsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataSetFieldsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataSetFieldsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataSetFieldsRecordData({
  String? name,
  String? dataType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'dataType': dataType,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataSetFieldsRecordDocumentEquality
    implements Equality<DataSetFieldsRecord> {
  const DataSetFieldsRecordDocumentEquality();

  @override
  bool equals(DataSetFieldsRecord? e1, DataSetFieldsRecord? e2) {
    return e1?.name == e2?.name && e1?.dataType == e2?.dataType;
  }

  @override
  int hash(DataSetFieldsRecord? e) =>
      const ListEquality().hash([e?.name, e?.dataType]);

  @override
  bool isValidKey(Object? o) => o is DataSetFieldsRecord;
}
