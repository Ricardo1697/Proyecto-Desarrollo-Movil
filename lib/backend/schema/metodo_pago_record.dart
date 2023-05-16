import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'metodo_pago_record.g.dart';

abstract class MetodoPagoRecord
    implements Built<MetodoPagoRecord, MetodoPagoRecordBuilder> {
  static Serializer<MetodoPagoRecord> get serializer =>
      _$metodoPagoRecordSerializer;

  String? get nombreMetodoPago;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MetodoPagoRecordBuilder builder) =>
      builder..nombreMetodoPago = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MetodoPago');

  static Stream<MetodoPagoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MetodoPagoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MetodoPagoRecord._();
  factory MetodoPagoRecord([void Function(MetodoPagoRecordBuilder) updates]) =
      _$MetodoPagoRecord;

  static MetodoPagoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMetodoPagoRecordData({
  String? nombreMetodoPago,
}) {
  final firestoreData = serializers.toFirestore(
    MetodoPagoRecord.serializer,
    MetodoPagoRecord(
      (m) => m..nombreMetodoPago = nombreMetodoPago,
    ),
  );

  return firestoreData;
}
