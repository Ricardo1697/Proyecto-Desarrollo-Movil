import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categorias_record.g.dart';

abstract class CategoriasRecord
    implements Built<CategoriasRecord, CategoriasRecordBuilder> {
  static Serializer<CategoriasRecord> get serializer =>
      _$categoriasRecordSerializer;

  String? get nombreCategoria;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriasRecordBuilder builder) =>
      builder..nombreCategoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriasRecord._();
  factory CategoriasRecord([void Function(CategoriasRecordBuilder) updates]) =
      _$CategoriasRecord;

  static CategoriasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriasRecordData({
  String? nombreCategoria,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriasRecord.serializer,
    CategoriasRecord(
      (c) => c..nombreCategoria = nombreCategoria,
    ),
  );

  return firestoreData;
}
