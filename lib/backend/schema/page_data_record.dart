import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PageDataRecord extends FirestoreRecord {
  PageDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "projectID" field.
  int? _projectID;
  int get projectID => _projectID ?? 0;
  bool hasProjectID() => _projectID != null;

  // "version" field.
  double? _version;
  double get version => _version ?? 0.0;
  bool hasVersion() => _version != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "pageType" field.
  String? _pageType;
  String get pageType => _pageType ?? '';
  bool hasPageType() => _pageType != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "propiedades_por_defecto" field.
  List<String>? _propiedadesPorDefecto;
  List<String> get propiedadesPorDefecto => _propiedadesPorDefecto ?? const [];
  bool hasPropiedadesPorDefecto() => _propiedadesPorDefecto != null;

  // "fontFamily" field.
  String? _fontFamily;
  String get fontFamily => _fontFamily ?? '';
  bool hasFontFamily() => _fontFamily != null;

  // "fontSize" field.
  double? _fontSize;
  double get fontSize => _fontSize ?? 0.0;
  bool hasFontSize() => _fontSize != null;

  // "textAlign" field.
  String? _textAlign;
  String get textAlign => _textAlign ?? '';
  bool hasTextAlign() => _textAlign != null;

  void _initializeFields() {
    _projectID = castToType<int>(snapshotData['projectID']);
    _version = castToType<double>(snapshotData['version']);
    _name = snapshotData['name'] as String?;
    _pageType = snapshotData['pageType'] as String?;
    _width = castToType<double>(snapshotData['width']);
    _propiedadesPorDefecto =
        getDataList(snapshotData['propiedades_por_defecto']);
    _fontFamily = snapshotData['fontFamily'] as String?;
    _fontSize = castToType<double>(snapshotData['fontSize']);
    _textAlign = snapshotData['textAlign'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('page_data');

  static Stream<PageDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PageDataRecord.fromSnapshot(s));

  static Future<PageDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PageDataRecord.fromSnapshot(s));

  static PageDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PageDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PageDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PageDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PageDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PageDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPageDataRecordData({
  int? projectID,
  double? version,
  String? name,
  String? pageType,
  double? width,
  String? fontFamily,
  double? fontSize,
  String? textAlign,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectID': projectID,
      'version': version,
      'name': name,
      'pageType': pageType,
      'width': width,
      'fontFamily': fontFamily,
      'fontSize': fontSize,
      'textAlign': textAlign,
    }.withoutNulls,
  );

  return firestoreData;
}

class PageDataRecordDocumentEquality implements Equality<PageDataRecord> {
  const PageDataRecordDocumentEquality();

  @override
  bool equals(PageDataRecord? e1, PageDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.projectID == e2?.projectID &&
        e1?.version == e2?.version &&
        e1?.name == e2?.name &&
        e1?.pageType == e2?.pageType &&
        e1?.width == e2?.width &&
        listEquality.equals(
            e1?.propiedadesPorDefecto, e2?.propiedadesPorDefecto) &&
        e1?.fontFamily == e2?.fontFamily &&
        e1?.fontSize == e2?.fontSize &&
        e1?.textAlign == e2?.textAlign;
  }

  @override
  int hash(PageDataRecord? e) => const ListEquality().hash([
        e?.projectID,
        e?.version,
        e?.name,
        e?.pageType,
        e?.width,
        e?.propiedadesPorDefecto,
        e?.fontFamily,
        e?.fontSize,
        e?.textAlign
      ]);

  @override
  bool isValidKey(Object? o) => o is PageDataRecord;
}
