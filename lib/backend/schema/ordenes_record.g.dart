// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordenes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdenesRecord> _$ordenesRecordSerializer =
    new _$OrdenesRecordSerializer();

class _$OrdenesRecordSerializer implements StructuredSerializer<OrdenesRecord> {
  @override
  final Iterable<Type> types = const [OrdenesRecord, _$OrdenesRecord];
  @override
  final String wireName = 'OrdenesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdenesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.numeroOrden;
    if (value != null) {
      result
        ..add('numeroOrden')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaHora;
    if (value != null) {
      result
        ..add('fechaHora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tipoEntrega;
    if (value != null) {
      result
        ..add('tipoEntrega')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metodoPago;
    if (value != null) {
      result
        ..add('metodoPago')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalOrden;
    if (value != null) {
      result
        ..add('totalOrden')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.estadoOrden;
    if (value != null) {
      result
        ..add('estadoOrden')
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
  OrdenesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdenesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'numeroOrden':
          result.numeroOrden = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fechaHora':
          result.fechaHora = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'tipoEntrega':
          result.tipoEntrega = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metodoPago':
          result.metodoPago = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalOrden':
          result.totalOrden = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'estadoOrden':
          result.estadoOrden = serializers.deserialize(value,
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

class _$OrdenesRecord extends OrdenesRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? numeroOrden;
  @override
  final DateTime? fechaHora;
  @override
  final String? tipoEntrega;
  @override
  final String? metodoPago;
  @override
  final double? totalOrden;
  @override
  final String? estadoOrden;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdenesRecord([void Function(OrdenesRecordBuilder)? updates]) =>
      (new OrdenesRecordBuilder()..update(updates))._build();

  _$OrdenesRecord._(
      {this.userRef,
      this.numeroOrden,
      this.fechaHora,
      this.tipoEntrega,
      this.metodoPago,
      this.totalOrden,
      this.estadoOrden,
      this.ffRef})
      : super._();

  @override
  OrdenesRecord rebuild(void Function(OrdenesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdenesRecordBuilder toBuilder() => new OrdenesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdenesRecord &&
        userRef == other.userRef &&
        numeroOrden == other.numeroOrden &&
        fechaHora == other.fechaHora &&
        tipoEntrega == other.tipoEntrega &&
        metodoPago == other.metodoPago &&
        totalOrden == other.totalOrden &&
        estadoOrden == other.estadoOrden &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userRef.hashCode);
    _$hash = $jc(_$hash, numeroOrden.hashCode);
    _$hash = $jc(_$hash, fechaHora.hashCode);
    _$hash = $jc(_$hash, tipoEntrega.hashCode);
    _$hash = $jc(_$hash, metodoPago.hashCode);
    _$hash = $jc(_$hash, totalOrden.hashCode);
    _$hash = $jc(_$hash, estadoOrden.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdenesRecord')
          ..add('userRef', userRef)
          ..add('numeroOrden', numeroOrden)
          ..add('fechaHora', fechaHora)
          ..add('tipoEntrega', tipoEntrega)
          ..add('metodoPago', metodoPago)
          ..add('totalOrden', totalOrden)
          ..add('estadoOrden', estadoOrden)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdenesRecordBuilder
    implements Builder<OrdenesRecord, OrdenesRecordBuilder> {
  _$OrdenesRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _numeroOrden;
  String? get numeroOrden => _$this._numeroOrden;
  set numeroOrden(String? numeroOrden) => _$this._numeroOrden = numeroOrden;

  DateTime? _fechaHora;
  DateTime? get fechaHora => _$this._fechaHora;
  set fechaHora(DateTime? fechaHora) => _$this._fechaHora = fechaHora;

  String? _tipoEntrega;
  String? get tipoEntrega => _$this._tipoEntrega;
  set tipoEntrega(String? tipoEntrega) => _$this._tipoEntrega = tipoEntrega;

  String? _metodoPago;
  String? get metodoPago => _$this._metodoPago;
  set metodoPago(String? metodoPago) => _$this._metodoPago = metodoPago;

  double? _totalOrden;
  double? get totalOrden => _$this._totalOrden;
  set totalOrden(double? totalOrden) => _$this._totalOrden = totalOrden;

  String? _estadoOrden;
  String? get estadoOrden => _$this._estadoOrden;
  set estadoOrden(String? estadoOrden) => _$this._estadoOrden = estadoOrden;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdenesRecordBuilder() {
    OrdenesRecord._initializeBuilder(this);
  }

  OrdenesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _numeroOrden = $v.numeroOrden;
      _fechaHora = $v.fechaHora;
      _tipoEntrega = $v.tipoEntrega;
      _metodoPago = $v.metodoPago;
      _totalOrden = $v.totalOrden;
      _estadoOrden = $v.estadoOrden;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdenesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdenesRecord;
  }

  @override
  void update(void Function(OrdenesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdenesRecord build() => _build();

  _$OrdenesRecord _build() {
    final _$result = _$v ??
        new _$OrdenesRecord._(
            userRef: userRef,
            numeroOrden: numeroOrden,
            fechaHora: fechaHora,
            tipoEntrega: tipoEntrega,
            metodoPago: metodoPago,
            totalOrden: totalOrden,
            estadoOrden: estadoOrden,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
