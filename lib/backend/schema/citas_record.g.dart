// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CitasRecord> _$citasRecordSerializer = new _$CitasRecordSerializer();

class _$CitasRecordSerializer implements StructuredSerializer<CitasRecord> {
  @override
  final Iterable<Type> types = const [CitasRecord, _$CitasRecord];
  @override
  final String wireName = 'CitasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CitasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fechaSeleccionada;
    if (value != null) {
      result
        ..add('fechaSeleccionada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.servicio;
    if (value != null) {
      result
        ..add('servicio')
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
  CitasRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CitasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fechaSeleccionada':
          result.fechaSeleccionada = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'servicio':
          result.servicio = serializers.deserialize(value,
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

class _$CitasRecord extends CitasRecord {
  @override
  final DateTime? fechaSeleccionada;
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final String? estado;
  @override
  final String? servicio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CitasRecord([void Function(CitasRecordBuilder)? updates]) =>
      (new CitasRecordBuilder()..update(updates))._build();

  _$CitasRecord._(
      {this.fechaSeleccionada,
      this.usuario,
      this.estado,
      this.servicio,
      this.ffRef})
      : super._();

  @override
  CitasRecord rebuild(void Function(CitasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CitasRecordBuilder toBuilder() => new CitasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CitasRecord &&
        fechaSeleccionada == other.fechaSeleccionada &&
        usuario == other.usuario &&
        estado == other.estado &&
        servicio == other.servicio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fechaSeleccionada.hashCode);
    _$hash = $jc(_$hash, usuario.hashCode);
    _$hash = $jc(_$hash, estado.hashCode);
    _$hash = $jc(_$hash, servicio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CitasRecord')
          ..add('fechaSeleccionada', fechaSeleccionada)
          ..add('usuario', usuario)
          ..add('estado', estado)
          ..add('servicio', servicio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CitasRecordBuilder implements Builder<CitasRecord, CitasRecordBuilder> {
  _$CitasRecord? _$v;

  DateTime? _fechaSeleccionada;
  DateTime? get fechaSeleccionada => _$this._fechaSeleccionada;
  set fechaSeleccionada(DateTime? fechaSeleccionada) =>
      _$this._fechaSeleccionada = fechaSeleccionada;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  String? _servicio;
  String? get servicio => _$this._servicio;
  set servicio(String? servicio) => _$this._servicio = servicio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CitasRecordBuilder() {
    CitasRecord._initializeBuilder(this);
  }

  CitasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fechaSeleccionada = $v.fechaSeleccionada;
      _usuario = $v.usuario;
      _estado = $v.estado;
      _servicio = $v.servicio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CitasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CitasRecord;
  }

  @override
  void update(void Function(CitasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CitasRecord build() => _build();

  _$CitasRecord _build() {
    final _$result = _$v ??
        new _$CitasRecord._(
            fechaSeleccionada: fechaSeleccionada,
            usuario: usuario,
            estado: estado,
            servicio: servicio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
