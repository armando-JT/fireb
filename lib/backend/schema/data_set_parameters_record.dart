import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSetParametersRecord extends FirestoreRecord {
  DataSetParametersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "parameterID" field.
  int? _parameterID;
  int get parameterID => _parameterID ?? 0;
  bool hasParameterID() => _parameterID != null;

  // "order" field.
  String? _order;
  String get order => _order ?? '';
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _parameterID = castToType<int>(snapshotData['parameterID']);
    _order = snapshotData['order'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dataSet_parameters');

  static Stream<DataSetParametersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataSetParametersRecord.fromSnapshot(s));

  static Future<DataSetParametersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DataSetParametersRecord.fromSnapshot(s));

  static DataSetParametersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataSetParametersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataSetParametersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataSetParametersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataSetParametersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataSetParametersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataSetParametersRecordData({
  int? id,
  int? parameterID,
  String? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'parameterID': parameterID,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataSetParametersRecordDocumentEquality
    implements Equality<DataSetParametersRecord> {
  const DataSetParametersRecordDocumentEquality();

  @override
  bool equals(DataSetParametersRecord? e1, DataSetParametersRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.parameterID == e2?.parameterID &&
        e1?.order == e2?.order;
  }

  @override
  int hash(DataSetParametersRecord? e) =>
      const ListEquality().hash([e?.id, e?.parameterID, e?.order]);

  @override
  bool isValidKey(Object? o) => o is DataSetParametersRecord;
}
