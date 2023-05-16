import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ubicacion_entrega_record.g.dart';

abstract class UbicacionEntregaRecord
    implements Built<UbicacionEntregaRecord, UbicacionEntregaRecordBuilder> {
  static Serializer<UbicacionEntregaRecord> get serializer =>
      _$ubicacionEntregaRecordSerializer;

  @BuiltValueField(wireName: 'Usuario')
  DocumentReference? get usuario;

  @BuiltValueField(wireName: 'Ubicacion')
  LatLng? get ubicacion;

  @BuiltValueField(wireName: 'FacturRef')
  String? get facturRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UbicacionEntregaRecordBuilder builder) =>
      builder..facturRef = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UbicacionEntrega');

  static Stream<UbicacionEntregaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UbicacionEntregaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UbicacionEntregaRecord._();
  factory UbicacionEntregaRecord(
          [void Function(UbicacionEntregaRecordBuilder) updates]) =
      _$UbicacionEntregaRecord;

  static UbicacionEntregaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUbicacionEntregaRecordData({
  DocumentReference? usuario,
  LatLng? ubicacion,
  String? facturRef,
}) {
  final firestoreData = serializers.toFirestore(
    UbicacionEntregaRecord.serializer,
    UbicacionEntregaRecord(
      (u) => u
        ..usuario = usuario
        ..ubicacion = ubicacion
        ..facturRef = facturRef,
    ),
  );

  return firestoreData;
}
