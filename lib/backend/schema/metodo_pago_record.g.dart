// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metodo_pago_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MetodoPagoRecord> _$metodoPagoRecordSerializer =
    new _$MetodoPagoRecordSerializer();

class _$MetodoPagoRecordSerializer
    implements StructuredSerializer<MetodoPagoRecord> {
  @override
  final Iterable<Type> types = const [MetodoPagoRecord, _$MetodoPagoRecord];
  @override
  final String wireName = 'MetodoPagoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MetodoPagoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreMetodoPago;
    if (value != null) {
      result
        ..add('nombreMetodoPago')
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
  MetodoPagoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetodoPagoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreMetodoPago':
          result.nombreMetodoPago = serializers.deserialize(value,
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

class _$MetodoPagoRecord extends MetodoPagoRecord {
  @override
  final String? nombreMetodoPago;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MetodoPagoRecord(
          [void Function(MetodoPagoRecordBuilder)? updates]) =>
      (new MetodoPagoRecordBuilder()..update(updates))._build();

  _$MetodoPagoRecord._({this.nombreMetodoPago, this.ffRef}) : super._();

  @override
  MetodoPagoRecord rebuild(void Function(MetodoPagoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetodoPagoRecordBuilder toBuilder() =>
      new MetodoPagoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetodoPagoRecord &&
        nombreMetodoPago == other.nombreMetodoPago &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreMetodoPago.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetodoPagoRecord')
          ..add('nombreMetodoPago', nombreMetodoPago)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MetodoPagoRecordBuilder
    implements Builder<MetodoPagoRecord, MetodoPagoRecordBuilder> {
  _$MetodoPagoRecord? _$v;

  String? _nombreMetodoPago;
  String? get nombreMetodoPago => _$this._nombreMetodoPago;
  set nombreMetodoPago(String? nombreMetodoPago) =>
      _$this._nombreMetodoPago = nombreMetodoPago;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MetodoPagoRecordBuilder() {
    MetodoPagoRecord._initializeBuilder(this);
  }

  MetodoPagoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreMetodoPago = $v.nombreMetodoPago;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetodoPagoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetodoPagoRecord;
  }

  @override
  void update(void Function(MetodoPagoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetodoPagoRecord build() => _build();

  _$MetodoPagoRecord _build() {
    final _$result = _$v ??
        new _$MetodoPagoRecord._(
            nombreMetodoPago: nombreMetodoPago, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
