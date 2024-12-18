import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WidgetsRecord extends FirestoreRecord {
  WidgetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "widgetType" field.
  String? _widgetType;
  String get widgetType => _widgetType ?? '';
  bool hasWidgetType() => _widgetType != null;

  // "script" field.
  String? _script;
  String get script => _script ?? '';
  bool hasScript() => _script != null;

  // "x" field.
  double? _x;
  double get x => _x ?? 0.0;
  bool hasX() => _x != null;

  // "y" field.
  double? _y;
  double get y => _y ?? 0.0;
  bool hasY() => _y != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "dataType" field.
  String? _dataType;
  String get dataType => _dataType ?? '';
  bool hasDataType() => _dataType != null;

  // "dataFormat" field.
  String? _dataFormat;
  String get dataFormat => _dataFormat ?? '';
  bool hasDataFormat() => _dataFormat != null;

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

  // "line" field.
  String? _line;
  String get line => _line ?? '';
  bool hasLine() => _line != null;

  // "column" field.
  String? _column;
  String get column => _column ?? '';
  bool hasColumn() => _column != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _widgetType = snapshotData['widgetType'] as String?;
    _script = snapshotData['script'] as String?;
    _x = castToType<double>(snapshotData['x']);
    _y = castToType<double>(snapshotData['y']);
    _width = castToType<double>(snapshotData['width']);
    _height = castToType<double>(snapshotData['height']);
    _dataType = snapshotData['dataType'] as String?;
    _dataFormat = snapshotData['dataFormat'] as String?;
    _fontFamily = snapshotData['fontFamily'] as String?;
    _fontSize = castToType<double>(snapshotData['fontSize']);
    _textAlign = snapshotData['textAlign'] as String?;
    _line = snapshotData['line'] as String?;
    _column = snapshotData['column'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('widgets');

  static Stream<WidgetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WidgetsRecord.fromSnapshot(s));

  static Future<WidgetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WidgetsRecord.fromSnapshot(s));

  static WidgetsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WidgetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WidgetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WidgetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WidgetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WidgetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWidgetsRecordData({
  String? name,
  String? widgetType,
  String? script,
  double? x,
  double? y,
  double? width,
  double? height,
  String? dataType,
  String? dataFormat,
  String? fontFamily,
  double? fontSize,
  String? textAlign,
  String? line,
  String? column,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'widgetType': widgetType,
      'script': script,
      'x': x,
      'y': y,
      'width': width,
      'height': height,
      'dataType': dataType,
      'dataFormat': dataFormat,
      'fontFamily': fontFamily,
      'fontSize': fontSize,
      'textAlign': textAlign,
      'line': line,
      'column': column,
    }.withoutNulls,
  );

  return firestoreData;
}

class WidgetsRecordDocumentEquality implements Equality<WidgetsRecord> {
  const WidgetsRecordDocumentEquality();

  @override
  bool equals(WidgetsRecord? e1, WidgetsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.widgetType == e2?.widgetType &&
        e1?.script == e2?.script &&
        e1?.x == e2?.x &&
        e1?.y == e2?.y &&
        e1?.width == e2?.width &&
        e1?.height == e2?.height &&
        e1?.dataType == e2?.dataType &&
        e1?.dataFormat == e2?.dataFormat &&
        e1?.fontFamily == e2?.fontFamily &&
        e1?.fontSize == e2?.fontSize &&
        e1?.textAlign == e2?.textAlign &&
        e1?.line == e2?.line &&
        e1?.column == e2?.column;
  }

  @override
  int hash(WidgetsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.widgetType,
        e?.script,
        e?.x,
        e?.y,
        e?.width,
        e?.height,
        e?.dataType,
        e?.dataFormat,
        e?.fontFamily,
        e?.fontSize,
        e?.textAlign,
        e?.line,
        e?.column
      ]);

  @override
  bool isValidKey(Object? o) => o is WidgetsRecord;
}
