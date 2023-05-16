import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ordenes_record.g.dart';

abstract class OrdenesRecord
    implements Built<OrdenesRecord, OrdenesRecordBuilder> {
  static Serializer<OrdenesRecord> get serializer => _$ordenesRecordSerializer;

  DocumentReference? get userRef;

  String? get numeroOrden;

  DateTime? get fechaHora;

  String? get tipoEntrega;

  String? get metodoPago;

  double? get totalOrden;

  String? get estadoOrden;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdenesRecordBuilder builder) => builder
    ..numeroOrden = ''
    ..tipoEntrega = ''
    ..metodoPago = ''
    ..totalOrden = 0.0
    ..estadoOrden = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordenes');

  static Stream<OrdenesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdenesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdenesRecord._();
  factory OrdenesRecord([void Function(OrdenesRecordBuilder) updates]) =
      _$OrdenesRecord;

  static OrdenesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdenesRecordData({
  DocumentReference? userRef,
  String? numeroOrden,
  DateTime? fechaHora,
  String? tipoEntrega,
  String? metodoPago,
  double? totalOrden,
  String? estadoOrden,
}) {
  final firestoreData = serializers.toFirestore(
    OrdenesRecord.serializer,
    OrdenesRecord(
      (o) => o
        ..userRef = userRef
        ..numeroOrden = numeroOrden
        ..fechaHora = fechaHora
        ..tipoEntrega = tipoEntrega
        ..metodoPago = metodoPago
        ..totalOrden = totalOrden
        ..estadoOrden = estadoOrden,
    ),
  );

  return firestoreData;
}
