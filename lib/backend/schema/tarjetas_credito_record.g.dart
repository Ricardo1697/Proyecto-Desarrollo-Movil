// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarjetas_credito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TarjetasCreditoRecord> _$tarjetasCreditoRecordSerializer =
    new _$TarjetasCreditoRecordSerializer();

class _$TarjetasCreditoRecordSerializer
    implements StructuredSerializer<TarjetasCreditoRecord> {
  @override
  final Iterable<Type> types = const [
    TarjetasCreditoRecord,
    _$TarjetasCreditoRecord
  ];
  @override
  final String wireName = 'TarjetasCreditoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TarjetasCreditoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numeroTarjeta;
    if (value != null) {
      result
        ..add('NumeroTarjeta')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cvv;
    if (value != null) {
      result
        ..add('CVV')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.metodoPago;
    if (value != null) {
      result
        ..add('metodoPago')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.consecutivoTarjeta;
    if (value != null) {
      result
        ..add('consecutivoTarjeta')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombreTrajeta;
    if (value != null) {
      result
        ..add('nombreTrajeta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaExpiracion;
    if (value != null) {
      result
        ..add('FechaExpiracion')
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
  TarjetasCreditoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TarjetasCreditoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'NumeroTarjeta':
          result.numeroTarjeta = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CVV':
          result.cvv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'metodoPago':
          result.metodoPago = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'consecutivoTarjeta':
          result.consecutivoTarjeta = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombreTrajeta':
          result.nombreTrajeta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FechaExpiracion':
          result.fechaExpiracion = serializers.deserialize(value,
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

class _$TarjetasCreditoRecord extends TarjetasCreditoRecord {
  @override
  final int? numeroTarjeta;
  @override
  final int? cvv;
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final DocumentReference<Object?>? metodoPago;
  @override
  final int? consecutivoTarjeta;
  @override
  final String? nombreTrajeta;
  @override
  final String? fechaExpiracion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TarjetasCreditoRecord(
          [void Function(TarjetasCreditoRecordBuilder)? updates]) =>
      (new TarjetasCreditoRecordBuilder()..update(updates))._build();

  _$TarjetasCreditoRecord._(
      {this.numeroTarjeta,
      this.cvv,
      this.usuario,
      this.metodoPago,
      this.consecutivoTarjeta,
      this.nombreTrajeta,
      this.fechaExpiracion,
      this.ffRef})
      : super._();

  @override
  TarjetasCreditoRecord rebuild(
          void Function(TarjetasCreditoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TarjetasCreditoRecordBuilder toBuilder() =>
      new TarjetasCreditoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TarjetasCreditoRecord &&
        numeroTarjeta == other.numeroTarjeta &&
        cvv == other.cvv &&
        usuario == other.usuario &&
        metodoPago == other.metodoPago &&
        consecutivoTarjeta == other.consecutivoTarjeta &&
        nombreTrajeta == other.nombreTrajeta &&
        fechaExpiracion == other.fechaExpiracion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numeroTarjeta.hashCode);
    _$hash = $jc(_$hash, cvv.hashCode);
    _$hash = $jc(_$hash, usuario.hashCode);
    _$hash = $jc(_$hash, metodoPago.hashCode);
    _$hash = $jc(_$hash, consecutivoTarjeta.hashCode);
    _$hash = $jc(_$hash, nombreTrajeta.hashCode);
    _$hash = $jc(_$hash, fechaExpiracion.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TarjetasCreditoRecord')
          ..add('numeroTarjeta', numeroTarjeta)
          ..add('cvv', cvv)
          ..add('usuario', usuario)
          ..add('metodoPago', metodoPago)
          ..add('consecutivoTarjeta', consecutivoTarjeta)
          ..add('nombreTrajeta', nombreTrajeta)
          ..add('fechaExpiracion', fechaExpiracion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TarjetasCreditoRecordBuilder
    implements Builder<TarjetasCreditoRecord, TarjetasCreditoRecordBuilder> {
  _$TarjetasCreditoRecord? _$v;

  int? _numeroTarjeta;
  int? get numeroTarjeta => _$this._numeroTarjeta;
  set numeroTarjeta(int? numeroTarjeta) =>
      _$this._numeroTarjeta = numeroTarjeta;

  int? _cvv;
  int? get cvv => _$this._cvv;
  set cvv(int? cvv) => _$this._cvv = cvv;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  DocumentReference<Object?>? _metodoPago;
  DocumentReference<Object?>? get metodoPago => _$this._metodoPago;
  set metodoPago(DocumentReference<Object?>? metodoPago) =>
      _$this._metodoPago = metodoPago;

  int? _consecutivoTarjeta;
  int? get consecutivoTarjeta => _$this._consecutivoTarjeta;
  set consecutivoTarjeta(int? consecutivoTarjeta) =>
      _$this._consecutivoTarjeta = consecutivoTarjeta;

  String? _nombreTrajeta;
  String? get nombreTrajeta => _$this._nombreTrajeta;
  set nombreTrajeta(String? nombreTrajeta) =>
      _$this._nombreTrajeta = nombreTrajeta;

  String? _fechaExpiracion;
  String? get fechaExpiracion => _$this._fechaExpiracion;
  set fechaExpiracion(String? fechaExpiracion) =>
      _$this._fechaExpiracion = fechaExpiracion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TarjetasCreditoRecordBuilder() {
    TarjetasCreditoRecord._initializeBuilder(this);
  }

  TarjetasCreditoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numeroTarjeta = $v.numeroTarjeta;
      _cvv = $v.cvv;
      _usuario = $v.usuario;
      _metodoPago = $v.metodoPago;
      _consecutivoTarjeta = $v.consecutivoTarjeta;
      _nombreTrajeta = $v.nombreTrajeta;
      _fechaExpiracion = $v.fechaExpiracion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TarjetasCreditoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TarjetasCreditoRecord;
  }

  @override
  void update(void Function(TarjetasCreditoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TarjetasCreditoRecord build() => _build();

  _$TarjetasCreditoRecord _build() {
    final _$result = _$v ??
        new _$TarjetasCreditoRecord._(
            numeroTarjeta: numeroTarjeta,
            cvv: cvv,
            usuario: usuario,
            metodoPago: metodoPago,
            consecutivoTarjeta: consecutivoTarjeta,
            nombreTrajeta: nombreTrajeta,
            fechaExpiracion: fechaExpiracion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
