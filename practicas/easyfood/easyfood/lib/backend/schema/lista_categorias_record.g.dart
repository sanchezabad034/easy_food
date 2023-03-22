// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_categorias_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListaCategoriasRecord> _$listaCategoriasRecordSerializer =
    new _$ListaCategoriasRecordSerializer();

class _$ListaCategoriasRecordSerializer
    implements StructuredSerializer<ListaCategoriasRecord> {
  @override
  final Iterable<Type> types = const [
    ListaCategoriasRecord,
    _$ListaCategoriasRecord
  ];
  @override
  final String wireName = 'ListaCategoriasRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ListaCategoriasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreTienda;
    if (value != null) {
      result
        ..add('NombreTienda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaTiendas;
    if (value != null) {
      result
        ..add('ListaTiendas')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('Precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.descripcin;
    if (value != null) {
      result
        ..add('Descripcin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tienda;
    if (value != null) {
      result
        ..add('Tienda')
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
  ListaCategoriasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListaCategoriasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'NombreTienda':
          result.nombreTienda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ListaTiendas':
          result.listaTiendas.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Descripcin':
          result.descripcin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Tienda':
          result.tienda = serializers.deserialize(value,
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

class _$ListaCategoriasRecord extends ListaCategoriasRecord {
  @override
  final String? nombreTienda;
  @override
  final String? imagen;
  @override
  final BuiltList<String>? listaTiendas;
  @override
  final double? precio;
  @override
  final String? descripcin;
  @override
  final String? tienda;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListaCategoriasRecord(
          [void Function(ListaCategoriasRecordBuilder)? updates]) =>
      (new ListaCategoriasRecordBuilder()..update(updates))._build();

  _$ListaCategoriasRecord._(
      {this.nombreTienda,
      this.imagen,
      this.listaTiendas,
      this.precio,
      this.descripcin,
      this.tienda,
      this.ffRef})
      : super._();

  @override
  ListaCategoriasRecord rebuild(
          void Function(ListaCategoriasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListaCategoriasRecordBuilder toBuilder() =>
      new ListaCategoriasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListaCategoriasRecord &&
        nombreTienda == other.nombreTienda &&
        imagen == other.imagen &&
        listaTiendas == other.listaTiendas &&
        precio == other.precio &&
        descripcin == other.descripcin &&
        tienda == other.tienda &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombreTienda.hashCode), imagen.hashCode),
                        listaTiendas.hashCode),
                    precio.hashCode),
                descripcin.hashCode),
            tienda.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListaCategoriasRecord')
          ..add('nombreTienda', nombreTienda)
          ..add('imagen', imagen)
          ..add('listaTiendas', listaTiendas)
          ..add('precio', precio)
          ..add('descripcin', descripcin)
          ..add('tienda', tienda)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListaCategoriasRecordBuilder
    implements Builder<ListaCategoriasRecord, ListaCategoriasRecordBuilder> {
  _$ListaCategoriasRecord? _$v;

  String? _nombreTienda;
  String? get nombreTienda => _$this._nombreTienda;
  set nombreTienda(String? nombreTienda) => _$this._nombreTienda = nombreTienda;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  ListBuilder<String>? _listaTiendas;
  ListBuilder<String> get listaTiendas =>
      _$this._listaTiendas ??= new ListBuilder<String>();
  set listaTiendas(ListBuilder<String>? listaTiendas) =>
      _$this._listaTiendas = listaTiendas;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _descripcin;
  String? get descripcin => _$this._descripcin;
  set descripcin(String? descripcin) => _$this._descripcin = descripcin;

  String? _tienda;
  String? get tienda => _$this._tienda;
  set tienda(String? tienda) => _$this._tienda = tienda;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListaCategoriasRecordBuilder() {
    ListaCategoriasRecord._initializeBuilder(this);
  }

  ListaCategoriasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreTienda = $v.nombreTienda;
      _imagen = $v.imagen;
      _listaTiendas = $v.listaTiendas?.toBuilder();
      _precio = $v.precio;
      _descripcin = $v.descripcin;
      _tienda = $v.tienda;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListaCategoriasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListaCategoriasRecord;
  }

  @override
  void update(void Function(ListaCategoriasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListaCategoriasRecord build() => _build();

  _$ListaCategoriasRecord _build() {
    _$ListaCategoriasRecord _$result;
    try {
      _$result = _$v ??
          new _$ListaCategoriasRecord._(
              nombreTienda: nombreTienda,
              imagen: imagen,
              listaTiendas: _listaTiendas?.build(),
              precio: precio,
              descripcin: descripcin,
              tienda: tienda,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaTiendas';
        _listaTiendas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListaCategoriasRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
