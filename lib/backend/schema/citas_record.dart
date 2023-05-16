import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'citas_record.g.dart';

abstract class CitasRecord implements Built<CitasRecord, CitasRecordBuilder> {
  static Serializer<CitasRecord> get serializer => _$citasRecordSerializer;

  DateTime? get fechaSeleccionada;

  DocumentReference? get usuario;

  String? get estado;

  String? get servicio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CitasRecordBuilder builder) => builder
    ..estado = ''
    ..servicio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CitasRecord._();
  factory CitasRecord([void Function(CitasRecordBuilder) updates]) =
      _$CitasRecord;

  static CitasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCitasRecordData({
  DateTime? fechaSeleccionada,
  DocumentReference? usuario,
  String? estado,
  String? servicio,
}) {
  final firestoreData = serializers.toFirestore(
    CitasRecord.serializer,
    CitasRecord(
      (c) => c
        ..fechaSeleccionada = fechaSeleccionada
        ..usuario = usuario
        ..estado = estado
        ..servicio = servicio,
    ),
  );

  return firestoreData;
}
