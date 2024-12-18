import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSourcesRecord extends FirestoreRecord {
  DataSourcesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "connectionString" field.
  String? _connectionString;
  String get connectionString => _connectionString ?? '';
  bool hasConnectionString() => _connectionString != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _connectionString = snapshotData['connectionString'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('data_sources');

  static Stream<DataSourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataSourcesRecord.fromSnapshot(s));

  static Future<DataSourcesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataSourcesRecord.fromSnapshot(s));

  static DataSourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataSourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataSourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataSourcesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataSourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataSourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataSourcesRecordData({
  String? name,
  String? connectionString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'connectionString': connectionString,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataSourcesRecordDocumentEquality implements Equality<DataSourcesRecord> {
  const DataSourcesRecordDocumentEquality();

  @override
  bool equals(DataSourcesRecord? e1, DataSourcesRecord? e2) {
    return e1?.name == e2?.name && e1?.connectionString == e2?.connectionString;
  }

  @override
  int hash(DataSourcesRecord? e) =>
      const ListEquality().hash([e?.name, e?.connectionString]);

  @override
  bool isValidKey(Object? o) => o is DataSourcesRecord;
}
