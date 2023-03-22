import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lista_categorias_record.g.dart';

abstract class ListaCategoriasRecord
    implements Built<ListaCategoriasRecord, ListaCategoriasRecordBuilder> {
  static Serializer<ListaCategoriasRecord> get serializer =>
      _$listaCategoriasRecordSerializer;

  @BuiltValueField(wireName: 'NombreTienda')
  String? get nombreTienda;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'ListaTiendas')
  BuiltList<String>? get listaTiendas;

  @BuiltValueField(wireName: 'Precio')
  double? get precio;

  @BuiltValueField(wireName: 'Descripcin')
  String? get descripcin;

  @BuiltValueField(wireName: 'Tienda')
  String? get tienda;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListaCategoriasRecordBuilder builder) =>
      builder
        ..nombreTienda = ''
        ..imagen = ''
        ..listaTiendas = ListBuilder()
        ..precio = 0.0
        ..descripcin = ''
        ..tienda = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListaCategorias');

  static Stream<ListaCategoriasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListaCategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListaCategoriasRecord._();
  factory ListaCategoriasRecord(
          [void Function(ListaCategoriasRecordBuilder) updates]) =
      _$ListaCategoriasRecord;

  static ListaCategoriasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListaCategoriasRecordData({
  String? nombreTienda,
  String? imagen,
  double? precio,
  String? descripcin,
  String? tienda,
}) {
  final firestoreData = serializers.toFirestore(
    ListaCategoriasRecord.serializer,
    ListaCategoriasRecord(
      (l) => l
        ..nombreTienda = nombreTienda
        ..imagen = imagen
        ..listaTiendas = null
        ..precio = precio
        ..descripcin = descripcin
        ..tienda = tienda,
    ),
  );

  return firestoreData;
}
