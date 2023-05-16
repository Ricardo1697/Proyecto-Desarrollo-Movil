// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_deseos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListaDeseosRecord> _$listaDeseosRecordSerializer =
    new _$ListaDeseosRecordSerializer();

class _$ListaDeseosRecordSerializer
    implements StructuredSerializer<ListaDeseosRecord> {
  @override
  final Iterable<Type> types = const [ListaDeseosRecord, _$ListaDeseosRecord];
  @override
  final String wireName = 'ListaDeseosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListaDeseosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imgURL;
    if (value != null) {
      result
        ..add('imgURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreMedicina;
    if (value != null) {
      result
        ..add('nombreMedicina')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detallerMedicina;
    if (value != null) {
      result
        ..add('detallerMedicina')
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
  ListaDeseosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListaDeseosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'imgURL':
          result.imgURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombreMedicina':
          result.nombreMedicina = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detallerMedicina':
          result.detallerMedicina = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
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

class _$ListaDeseosRecord extends ListaDeseosRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? imgURL;
  @override
  final String? nombreMedicina;
  @override
  final String? detallerMedicina;
  @override
  final double? precio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListaDeseosRecord(
          [void Function(ListaDeseosRecordBuilder)? updates]) =>
      (new ListaDeseosRecordBuilder()..update(updates))._build();

  _$ListaDeseosRecord._(
      {this.user,
      this.imgURL,
      this.nombreMedicina,
      this.detallerMedicina,
      this.precio,
      this.ffRef})
      : super._();

  @override
  ListaDeseosRecord rebuild(void Function(ListaDeseosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListaDeseosRecordBuilder toBuilder() =>
      new ListaDeseosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListaDeseosRecord &&
        user == other.user &&
        imgURL == other.imgURL &&
        nombreMedicina == other.nombreMedicina &&
        detallerMedicina == other.detallerMedicina &&
        precio == other.precio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, imgURL.hashCode);
    _$hash = $jc(_$hash, nombreMedicina.hashCode);
    _$hash = $jc(_$hash, detallerMedicina.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListaDeseosRecord')
          ..add('user', user)
          ..add('imgURL', imgURL)
          ..add('nombreMedicina', nombreMedicina)
          ..add('detallerMedicina', detallerMedicina)
          ..add('precio', precio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListaDeseosRecordBuilder
    implements Builder<ListaDeseosRecord, ListaDeseosRecordBuilder> {
  _$ListaDeseosRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _imgURL;
  String? get imgURL => _$this._imgURL;
  set imgURL(String? imgURL) => _$this._imgURL = imgURL;

  String? _nombreMedicina;
  String? get nombreMedicina => _$this._nombreMedicina;
  set nombreMedicina(String? nombreMedicina) =>
      _$this._nombreMedicina = nombreMedicina;

  String? _detallerMedicina;
  String? get detallerMedicina => _$this._detallerMedicina;
  set detallerMedicina(String? detallerMedicina) =>
      _$this._detallerMedicina = detallerMedicina;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListaDeseosRecordBuilder() {
    ListaDeseosRecord._initializeBuilder(this);
  }

  ListaDeseosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _imgURL = $v.imgURL;
      _nombreMedicina = $v.nombreMedicina;
      _detallerMedicina = $v.detallerMedicina;
      _precio = $v.precio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListaDeseosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListaDeseosRecord;
  }

  @override
  void update(void Function(ListaDeseosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListaDeseosRecord build() => _build();

  _$ListaDeseosRecord _build() {
    final _$result = _$v ??
        new _$ListaDeseosRecord._(
            user: user,
            imgURL: imgURL,
            nombreMedicina: nombreMedicina,
            detallerMedicina: detallerMedicina,
            precio: precio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
