import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lista_deseos_record.g.dart';

abstract class ListaDeseosRecord
    implements Built<ListaDeseosRecord, ListaDeseosRecordBuilder> {
  static Serializer<ListaDeseosRecord> get serializer =>
      _$listaDeseosRecordSerializer;

  DocumentReference? get user;

  String? get imgURL;

  String? get nombreMedicina;

  String? get detallerMedicina;

  double? get precio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListaDeseosRecordBuilder builder) => builder
    ..imgURL = ''
    ..nombreMedicina = ''
    ..detallerMedicina = ''
    ..precio = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListaDeseos');

  static Stream<ListaDeseosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListaDeseosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListaDeseosRecord._();
  factory ListaDeseosRecord([void Function(ListaDeseosRecordBuilder) updates]) =
      _$ListaDeseosRecord;

  static ListaDeseosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListaDeseosRecordData({
  DocumentReference? user,
  String? imgURL,
  String? nombreMedicina,
  String? detallerMedicina,
  double? precio,
}) {
  final firestoreData = serializers.toFirestore(
    ListaDeseosRecord.serializer,
    ListaDeseosRecord(
      (l) => l
        ..user = user
        ..imgURL = imgURL
        ..nombreMedicina = nombreMedicina
        ..detallerMedicina = detallerMedicina
        ..precio = precio,
    ),
  );

  return firestoreData;
}
