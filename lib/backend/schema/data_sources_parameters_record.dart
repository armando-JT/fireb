import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSourcesParametersRecord extends FirestoreRecord {
  DataSourcesParametersRecord._(
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
      FirebaseFirestore.instance.collection('dataSources_parameters');

  static Stream<DataSourcesParametersRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DataSourcesParametersRecord.fromSnapshot(s));

  static Future<DataSourcesParametersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DataSourcesParametersRecord.fromSnapshot(s));

  static DataSourcesParametersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataSourcesParametersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataSourcesParametersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataSourcesParametersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataSourcesParametersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataSourcesParametersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataSourcesParametersRecordData({
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

class DataSourcesParametersRecordDocumentEquality
    implements Equality<DataSourcesParametersRecord> {
  const DataSourcesParametersRecordDocumentEquality();

  @override
  bool equals(
      DataSourcesParametersRecord? e1, DataSourcesParametersRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.parameterID == e2?.parameterID &&
        e1?.order == e2?.order;
  }

  @override
  int hash(DataSourcesParametersRecord? e) =>
      const ListEquality().hash([e?.id, e?.parameterID, e?.order]);

  @override
  bool isValidKey(Object? o) => o is DataSourcesParametersRecord;
}
