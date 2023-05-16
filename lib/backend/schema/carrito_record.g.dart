// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarritoRecord> _$carritoRecordSerializer =
    new _$CarritoRecordSerializer();

class _$CarritoRecordSerializer implements StructuredSerializer<CarritoRecord> {
  @override
  final Iterable<Type> types = const [CarritoRecord, _$CarritoRecord];
  @override
  final String wireName = 'CarritoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.imgURL;
    if (value != null) {
      result
        ..add('imgURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subtotalProducto;
    if (value != null) {
      result
        ..add('subtotalProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  CarritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'nombreMedicina':
          result.nombreMedicina = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imgURL':
          result.imgURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subtotalProducto':
          result.subtotalProducto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$CarritoRecord extends CarritoRecord {
  @override
  final int? cantidad;
  @override
  final double? precio;
  @override
  final String? nombreMedicina;
  @override
  final String? imgURL;
  @override
  final double? subtotalProducto;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarritoRecord([void Function(CarritoRecordBuilder)? updates]) =>
      (new CarritoRecordBuilder()..update(updates))._build();

  _$CarritoRecord._(
      {this.cantidad,
      this.precio,
      this.nombreMedicina,
      this.imgURL,
      this.subtotalProducto,
      this.uid,
      this.ffRef})
      : super._();

  @override
  CarritoRecord rebuild(void Function(CarritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarritoRecordBuilder toBuilder() => new CarritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarritoRecord &&
        cantidad == other.cantidad &&
        precio == other.precio &&
        nombreMedicina == other.nombreMedicina &&
        imgURL == other.imgURL &&
        subtotalProducto == other.subtotalProducto &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, nombreMedicina.hashCode);
    _$hash = $jc(_$hash, imgURL.hashCode);
    _$hash = $jc(_$hash, subtotalProducto.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarritoRecord')
          ..add('cantidad', cantidad)
          ..add('precio', precio)
          ..add('nombreMedicina', nombreMedicina)
          ..add('imgURL', imgURL)
          ..add('subtotalProducto', subtotalProducto)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarritoRecordBuilder
    implements Builder<CarritoRecord, CarritoRecordBuilder> {
  _$CarritoRecord? _$v;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _nombreMedicina;
  String? get nombreMedicina => _$this._nombreMedicina;
  set nombreMedicina(String? nombreMedicina) =>
      _$this._nombreMedicina = nombreMedicina;

  String? _imgURL;
  String? get imgURL => _$this._imgURL;
  set imgURL(String? imgURL) => _$this._imgURL = imgURL;

  double? _subtotalProducto;
  double? get subtotalProducto => _$this._subtotalProducto;
  set subtotalProducto(double? subtotalProducto) =>
      _$this._subtotalProducto = subtotalProducto;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarritoRecordBuilder() {
    CarritoRecord._initializeBuilder(this);
  }

  CarritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cantidad = $v.cantidad;
      _precio = $v.precio;
      _nombreMedicina = $v.nombreMedicina;
      _imgURL = $v.imgURL;
      _subtotalProducto = $v.subtotalProducto;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarritoRecord;
  }

  @override
  void update(void Function(CarritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarritoRecord build() => _build();

  _$CarritoRecord _build() {
    final _$result = _$v ??
        new _$CarritoRecord._(
            cantidad: cantidad,
            precio: precio,
            nombreMedicina: nombreMedicina,
            imgURL: imgURL,
            subtotalProducto: subtotalProducto,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
