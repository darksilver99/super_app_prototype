// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestListJsonStruct extends BaseStruct {
  TestListJsonStruct({
    String? id,
    String? subject,
    String? detail,
    String? createDate,
    String? hits,
  })  : _id = id,
        _subject = subject,
        _detail = detail,
        _createDate = createDate,
        _hits = hits;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;
  bool hasSubject() => _subject != null;

  // "detail" field.
  String? _detail;
  String get detail => _detail ?? '';
  set detail(String? val) => _detail = val;
  bool hasDetail() => _detail != null;

  // "create_date" field.
  String? _createDate;
  String get createDate => _createDate ?? '';
  set createDate(String? val) => _createDate = val;
  bool hasCreateDate() => _createDate != null;

  // "hits" field.
  String? _hits;
  String get hits => _hits ?? '';
  set hits(String? val) => _hits = val;
  bool hasHits() => _hits != null;

  static TestListJsonStruct fromMap(Map<String, dynamic> data) =>
      TestListJsonStruct(
        id: data['id'] as String?,
        subject: data['subject'] as String?,
        detail: data['detail'] as String?,
        createDate: data['create_date'] as String?,
        hits: data['hits'] as String?,
      );

  static TestListJsonStruct? maybeFromMap(dynamic data) => data is Map
      ? TestListJsonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'subject': _subject,
        'detail': _detail,
        'create_date': _createDate,
        'hits': _hits,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'subject': serializeParam(
          _subject,
          ParamType.String,
        ),
        'detail': serializeParam(
          _detail,
          ParamType.String,
        ),
        'create_date': serializeParam(
          _createDate,
          ParamType.String,
        ),
        'hits': serializeParam(
          _hits,
          ParamType.String,
        ),
      }.withoutNulls;

  static TestListJsonStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestListJsonStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        subject: deserializeParam(
          data['subject'],
          ParamType.String,
          false,
        ),
        detail: deserializeParam(
          data['detail'],
          ParamType.String,
          false,
        ),
        createDate: deserializeParam(
          data['create_date'],
          ParamType.String,
          false,
        ),
        hits: deserializeParam(
          data['hits'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TestListJsonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestListJsonStruct &&
        id == other.id &&
        subject == other.subject &&
        detail == other.detail &&
        createDate == other.createDate &&
        hits == other.hits;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, subject, detail, createDate, hits]);
}

TestListJsonStruct createTestListJsonStruct({
  String? id,
  String? subject,
  String? detail,
  String? createDate,
  String? hits,
}) =>
    TestListJsonStruct(
      id: id,
      subject: subject,
      detail: detail,
      createDate: createDate,
      hits: hits,
    );
