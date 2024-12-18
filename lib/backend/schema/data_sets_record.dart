import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSetsRecord extends FirestoreRecord {
  DataSetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "queryString" field.
  String? _queryString;
  String get queryString => _queryString ?? '';
  bool hasQueryString() => _queryString != null;

  // "order" field.
  String? _order;
  String get order => _order ?? '';
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _queryString = snapshotData['queryString'] as String?;
    _order = snapshotData['order'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dataSets');

  static Stream<DataSetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataSetsRecord.fromSnapshot(s));

  static Future<DataSetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataSetsRecord.fromSnapshot(s));

  static DataSetsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataSetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataSetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataSetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataSetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataSetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataSetsRecordData({
  String? name,
  String? queryString,
  String? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'queryString': queryString,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataSetsRecordDocumentEquality implements Equality<DataSetsRecord> {
  const DataSetsRecordDocumentEquality();

  @override
  bool equals(DataSetsRecord? e1, DataSetsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.queryString == e2?.queryString &&
        e1?.order == e2?.order;
  }

  @override
  int hash(DataSetsRecord? e) =>
      const ListEquality().hash([e?.name, e?.queryString, e?.order]);

  @override
  bool isValidKey(Object? o) => o is DataSetsRecord;
}
