// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ubicacion_entrega_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UbicacionEntregaRecord> _$ubicacionEntregaRecordSerializer =
    new _$UbicacionEntregaRecordSerializer();

class _$UbicacionEntregaRecordSerializer
    implements StructuredSerializer<UbicacionEntregaRecord> {
  @override
  final Iterable<Type> types = const [
    UbicacionEntregaRecord,
    _$UbicacionEntregaRecord
  ];
  @override
  final String wireName = 'UbicacionEntregaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UbicacionEntregaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.usuario;
    if (value != null) {
      result
        ..add('Usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ubicacion;
    if (value != null) {
      result
        ..add('Ubicacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.facturRef;
    if (value != null) {
      result
        ..add('FacturRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UbicacionEntregaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UbicacionEntregaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Ubicacion':
          result.ubicacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'FacturRef':
          result.facturRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$UbicacionEntregaRecord extends UbicacionEntregaRecord {
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final LatLng? ubicacion;
  @override
  final String? facturRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UbicacionEntregaRecord(
          [void Function(UbicacionEntregaRecordBuilder)? updates]) =>
      (new UbicacionEntregaRecordBuilder()..update(updates))._build();

  _$UbicacionEntregaRecord._(
      {this.usuario, this.ubicacion, this.facturRef, this.ffRef})
      : super._();

  @override
  UbicacionEntregaRecord rebuild(
          void Function(UbicacionEntregaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UbicacionEntregaRecordBuilder toBuilder() =>
      new UbicacionEntregaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UbicacionEntregaRecord &&
        usuario == other.usuario &&
        ubicacion == other.ubicacion &&
        facturRef == other.facturRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usuario.hashCode);
    _$hash = $jc(_$hash, ubicacion.hashCode);
    _$hash = $jc(_$hash, facturRef.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UbicacionEntregaRecord')
          ..add('usuario', usuario)
          ..add('ubicacion', ubicacion)
          ..add('facturRef', facturRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UbicacionEntregaRecordBuilder
    implements Builder<UbicacionEntregaRecord, UbicacionEntregaRecordBuilder> {
  _$UbicacionEntregaRecord? _$v;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  LatLng? _ubicacion;
  LatLng? get ubicacion => _$this._ubicacion;
  set ubicacion(LatLng? ubicacion) => _$this._ubicacion = ubicacion;

  String? _facturRef;
  String? get facturRef => _$this._facturRef;
  set facturRef(String? facturRef) => _$this._facturRef = facturRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UbicacionEntregaRecordBuilder() {
    UbicacionEntregaRecord._initializeBuilder(this);
  }

  UbicacionEntregaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usuario = $v.usuario;
      _ubicacion = $v.ubicacion;
      _facturRef = $v.facturRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UbicacionEntregaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UbicacionEntregaRecord;
  }

  @override
  void update(void Function(UbicacionEntregaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UbicacionEntregaRecord build() => _build();

  _$UbicacionEntregaRecord _build() {
    final _$result = _$v ??
        new _$UbicacionEntregaRecord._(
            usuario: usuario,
            ubicacion: ubicacion,
            facturRef: facturRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
