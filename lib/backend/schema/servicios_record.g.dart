// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiciosRecord> _$serviciosRecordSerializer =
    new _$ServiciosRecordSerializer();

class _$ServiciosRecordSerializer
    implements StructuredSerializer<ServiciosRecord> {
  @override
  final Iterable<Type> types = const [ServiciosRecord, _$ServiciosRecord];
  @override
  final String wireName = 'ServiciosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ServiciosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreServicio;
    if (value != null) {
      result
        ..add('nombreServicio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precioServicio;
    if (value != null) {
      result
        ..add('precioServicio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  ServiciosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiciosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreServicio':
          result.nombreServicio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precioServicio':
          result.precioServicio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$ServiciosRecord extends ServiciosRecord {
  @override
  final String? nombreServicio;
  @override
  final double? precioServicio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServiciosRecord([void Function(ServiciosRecordBuilder)? updates]) =>
      (new ServiciosRecordBuilder()..update(updates))._build();

  _$ServiciosRecord._({this.nombreServicio, this.precioServicio, this.ffRef})
      : super._();

  @override
  ServiciosRecord rebuild(void Function(ServiciosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiciosRecordBuilder toBuilder() =>
      new ServiciosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiciosRecord &&
        nombreServicio == other.nombreServicio &&
        precioServicio == other.precioServicio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreServicio.hashCode);
    _$hash = $jc(_$hash, precioServicio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiciosRecord')
          ..add('nombreServicio', nombreServicio)
          ..add('precioServicio', precioServicio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServiciosRecordBuilder
    implements Builder<ServiciosRecord, ServiciosRecordBuilder> {
  _$ServiciosRecord? _$v;

  String? _nombreServicio;
  String? get nombreServicio => _$this._nombreServicio;
  set nombreServicio(String? nombreServicio) =>
      _$this._nombreServicio = nombreServicio;

  double? _precioServicio;
  double? get precioServicio => _$this._precioServicio;
  set precioServicio(double? precioServicio) =>
      _$this._precioServicio = precioServicio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServiciosRecordBuilder() {
    ServiciosRecord._initializeBuilder(this);
  }

  ServiciosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreServicio = $v.nombreServicio;
      _precioServicio = $v.precioServicio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiciosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiciosRecord;
  }

  @override
  void update(void Function(ServiciosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiciosRecord build() => _build();

  _$ServiciosRecord _build() {
    final _$result = _$v ??
        new _$ServiciosRecord._(
            nombreServicio: nombreServicio,
            precioServicio: precioServicio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
