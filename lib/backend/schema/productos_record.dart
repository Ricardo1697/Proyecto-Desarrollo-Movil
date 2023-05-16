import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'productos_record.g.dart';

abstract class ProductosRecord
    implements Built<ProductosRecord, ProductosRecordBuilder> {
  static Serializer<ProductosRecord> get serializer =>
      _$productosRecordSerializer;

  String? get imgUrl;

  double? get precio;

  String? get nombreMedicina;

  DocumentReference? get categoriaMedicina;

  String? get detallesMedicina;

  int? get cantidadDisponibleMedicina;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductosRecordBuilder builder) => builder
    ..imgUrl = ''
    ..precio = 0.0
    ..nombreMedicina = ''
    ..detallesMedicina = ''
    ..cantidadDisponibleMedicina = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductosRecord._();
  factory ProductosRecord([void Function(ProductosRecordBuilder) updates]) =
      _$ProductosRecord;

  static ProductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductosRecordData({
  String? imgUrl,
  double? precio,
  String? nombreMedicina,
  DocumentReference? categoriaMedicina,
  String? detallesMedicina,
  int? cantidadDisponibleMedicina,
}) {
  final firestoreData = serializers.toFirestore(
    ProductosRecord.serializer,
    ProductosRecord(
      (p) => p
        ..imgUrl = imgUrl
        ..precio = precio
        ..nombreMedicina = nombreMedicina
        ..categoriaMedicina = categoriaMedicina
        ..detallesMedicina = detallesMedicina
        ..cantidadDisponibleMedicina = cantidadDisponibleMedicina,
    ),
  );

  return firestoreData;
}
