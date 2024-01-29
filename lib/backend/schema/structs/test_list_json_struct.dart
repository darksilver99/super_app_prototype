// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestListJsonStruct extends BaseStruct {
  TestListJsonStruct({
    String? id,
    String? subject,
    String? image,
    String? createDate,
    String? type,
  })  : _id = id,
        _subject = subject,
        _image = image,
        _createDate = createDate,
        _type = type;

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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "create_date" field.
  String? _createDate;
  String get createDate => _createDate ?? '';
  set createDate(String? val) => _createDate = val;
  bool hasCreateDate() => _createDate != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  static TestListJsonStruct fromMap(Map<String, dynamic> data) =>
      TestListJsonStruct(
        id: data['id'] as String?,
        subject: data['subject'] as String?,
        image: data['image'] as String?,
        createDate: data['create_date'] as String?,
        type: data['type'] as String?,
      );

  static TestListJsonStruct? maybeFromMap(dynamic data) => data is Map
      ? TestListJsonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'subject': _subject,
        'image': _image,
        'create_date': _createDate,
        'type': _type,
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
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'create_date': serializeParam(
          _createDate,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
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
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        createDate: deserializeParam(
          data['create_date'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
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
        image == other.image &&
        createDate == other.createDate &&
        type == other.type;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, subject, image, createDate, type]);
}

TestListJsonStruct createTestListJsonStruct({
  String? id,
  String? subject,
  String? image,
  String? createDate,
  String? type,
}) =>
    TestListJsonStruct(
      id: id,
      subject: subject,
      image: image,
      createDate: createDate,
      type: type,
    );
