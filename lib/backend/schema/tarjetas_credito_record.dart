import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tarjetas_credito_record.g.dart';

abstract class TarjetasCreditoRecord
    implements Built<TarjetasCreditoRecord, TarjetasCreditoRecordBuilder> {
  static Serializer<TarjetasCreditoRecord> get serializer =>
      _$tarjetasCreditoRecordSerializer;

  @BuiltValueField(wireName: 'NumeroTarjeta')
  int? get numeroTarjeta;

  @BuiltValueField(wireName: 'CVV')
  int? get cvv;

  DocumentReference? get usuario;

  DocumentReference? get metodoPago;

  int? get consecutivoTarjeta;

  String? get nombreTrajeta;

  @BuiltValueField(wireName: 'FechaExpiracion')
  String? get fechaExpiracion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TarjetasCreditoRecordBuilder builder) =>
      builder
        ..numeroTarjeta = 0
        ..cvv = 0
        ..consecutivoTarjeta = 0
        ..nombreTrajeta = ''
        ..fechaExpiracion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TarjetasCredito');

  static Stream<TarjetasCreditoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TarjetasCreditoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TarjetasCreditoRecord._();
  factory TarjetasCreditoRecord(
          [void Function(TarjetasCreditoRecordBuilder) updates]) =
      _$TarjetasCreditoRecord;

  static TarjetasCreditoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTarjetasCreditoRecordData({
  int? numeroTarjeta,
  int? cvv,
  DocumentReference? usuario,
  DocumentReference? metodoPago,
  int? consecutivoTarjeta,
  String? nombreTrajeta,
  String? fechaExpiracion,
}) {
  final firestoreData = serializers.toFirestore(
    TarjetasCreditoRecord.serializer,
    TarjetasCreditoRecord(
      (t) => t
        ..numeroTarjeta = numeroTarjeta
        ..cvv = cvv
        ..usuario = usuario
        ..metodoPago = metodoPago
        ..consecutivoTarjeta = consecutivoTarjeta
        ..nombreTrajeta = nombreTrajeta
        ..fechaExpiracion = fechaExpiracion,
    ),
  );

  return firestoreData;
}
