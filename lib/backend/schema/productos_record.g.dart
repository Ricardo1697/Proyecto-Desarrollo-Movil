// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductosRecord> _$productosRecordSerializer =
    new _$ProductosRecordSerializer();

class _$ProductosRecordSerializer
    implements StructuredSerializer<ProductosRecord> {
  @override
  final Iterable<Type> types = const [ProductosRecord, _$ProductosRecord];
  @override
  final String wireName = 'ProductosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imgUrl;
    if (value != null) {
      result
        ..add('imgUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.nombreMedicina;
    if (value != null) {
      result
        ..add('nombreMedicina')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoriaMedicina;
    if (value != null) {
      result
        ..add('categoriaMedicina')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.detallesMedicina;
    if (value != null) {
      result
        ..add('detallesMedicina')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidadDisponibleMedicina;
    if (value != null) {
      result
        ..add('cantidadDisponibleMedicina')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imgUrl':
          result.imgUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'nombreMedicina':
          result.nombreMedicina = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoriaMedicina':
          result.categoriaMedicina = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'detallesMedicina':
          result.detallesMedicina = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cantidadDisponibleMedicina':
          result.cantidadDisponibleMedicina = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductosRecord extends ProductosRecord {
  @override
  final String? imgUrl;
  @override
  final double? precio;
  @override
  final String? nombreMedicina;
  @override
  final DocumentReference<Object?>? categoriaMedicina;
  @override
  final String? detallesMedicina;
  @override
  final int? cantidadDisponibleMedicina;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductosRecord([void Function(ProductosRecordBuilder)? updates]) =>
      (new ProductosRecordBuilder()..update(updates))._build();

  _$ProductosRecord._(
      {this.imgUrl,
      this.precio,
      this.nombreMedicina,
      this.categoriaMedicina,
      this.detallesMedicina,
      this.cantidadDisponibleMedicina,
      this.ffRef})
      : super._();

  @override
  ProductosRecord rebuild(void Function(ProductosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductosRecordBuilder toBuilder() =>
      new ProductosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductosRecord &&
        imgUrl == other.imgUrl &&
        precio == other.precio &&
        nombreMedicina == other.nombreMedicina &&
        categoriaMedicina == other.categoriaMedicina &&
        detallesMedicina == other.detallesMedicina &&
        cantidadDisponibleMedicina == other.cantidadDisponibleMedicina &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imgUrl.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, nombreMedicina.hashCode);
    _$hash = $jc(_$hash, categoriaMedicina.hashCode);
    _$hash = $jc(_$hash, detallesMedicina.hashCode);
    _$hash = $jc(_$hash, cantidadDisponibleMedicina.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductosRecord')
          ..add('imgUrl', imgUrl)
          ..add('precio', precio)
          ..add('nombreMedicina', nombreMedicina)
          ..add('categoriaMedicina', categoriaMedicina)
          ..add('detallesMedicina', detallesMedicina)
          ..add('cantidadDisponibleMedicina', cantidadDisponibleMedicina)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductosRecordBuilder
    implements Builder<ProductosRecord, ProductosRecordBuilder> {
  _$ProductosRecord? _$v;

  String? _imgUrl;
  String? get imgUrl => _$this._imgUrl;
  set imgUrl(String? imgUrl) => _$this._imgUrl = imgUrl;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _nombreMedicina;
  String? get nombreMedicina => _$this._nombreMedicina;
  set nombreMedicina(String? nombreMedicina) =>
      _$this._nombreMedicina = nombreMedicina;

  DocumentReference<Object?>? _categoriaMedicina;
  DocumentReference<Object?>? get categoriaMedicina =>
      _$this._categoriaMedicina;
  set categoriaMedicina(DocumentReference<Object?>? categoriaMedicina) =>
      _$this._categoriaMedicina = categoriaMedicina;

  String? _detallesMedicina;
  String? get detallesMedicina => _$this._detallesMedicina;
  set detallesMedicina(String? detallesMedicina) =>
      _$this._detallesMedicina = detallesMedicina;

  int? _cantidadDisponibleMedicina;
  int? get cantidadDisponibleMedicina => _$this._cantidadDisponibleMedicina;
  set cantidadDisponibleMedicina(int? cantidadDisponibleMedicina) =>
      _$this._cantidadDisponibleMedicina = cantidadDisponibleMedicina;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductosRecordBuilder() {
    ProductosRecord._initializeBuilder(this);
  }

  ProductosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgUrl = $v.imgUrl;
      _precio = $v.precio;
      _nombreMedicina = $v.nombreMedicina;
      _categoriaMedicina = $v.categoriaMedicina;
      _detallesMedicina = $v.detallesMedicina;
      _cantidadDisponibleMedicina = $v.cantidadDisponibleMedicina;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductosRecord;
  }

  @override
  void update(void Function(ProductosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductosRecord build() => _build();

  _$ProductosRecord _build() {
    final _$result = _$v ??
        new _$ProductosRecord._(
            imgUrl: imgUrl,
            precio: precio,
            nombreMedicina: nombreMedicina,
            categoriaMedicina: categoriaMedicina,
            detallesMedicina: detallesMedicina,
            cantidadDisponibleMedicina: cantidadDisponibleMedicina,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
