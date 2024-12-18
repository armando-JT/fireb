import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProyectoRecord extends FirestoreRecord {
  ProyectoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "ClientCode" field.
  String? _clientCode;
  String get clientCode => _clientCode ?? '';
  bool hasClientCode() => _clientCode != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _clientCode = snapshotData['ClientCode'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proyecto');

  static Stream<ProyectoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProyectoRecord.fromSnapshot(s));

  static Future<ProyectoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProyectoRecord.fromSnapshot(s));

  static ProyectoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProyectoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProyectoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProyectoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProyectoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProyectoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProyectoRecordData({
  int? id,
  String? clientCode,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'ClientCode': clientCode,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProyectoRecordDocumentEquality implements Equality<ProyectoRecord> {
  const ProyectoRecordDocumentEquality();

  @override
  bool equals(ProyectoRecord? e1, ProyectoRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.clientCode == e2?.clientCode &&
        e1?.name == e2?.name;
  }

  @override
  int hash(ProyectoRecord? e) =>
      const ListEquality().hash([e?.id, e?.clientCode, e?.name]);

  @override
  bool isValidKey(Object? o) => o is ProyectoRecord;
}
