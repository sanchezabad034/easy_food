void main() {
  //tabla usuarios
  Map<String, dynamic> users = {
    'name': 'Varchar_Nombre_del_usuario',
    'phone': 'integer_numero_telefonico',
    'email_Address': 'Varchar_direccion_correo',
    'address': 'Varchar_direccion_usuario',
    'avatar': 'Text_Img ususario'
  };

  //tabla payments
  Map<String, dynamic> payments = {
    'type_payments': 'Varchar_pago_efectivo_tarjeta',
    'amount_payments': 'Integer_cantidad',
  };

  Map<String, dynamic> products = {
    'name_product': 'Varchar_Nombre_del producto',
    'quantity_product': 'Integer_cantidad',
    'price_product': 'Integer_precio',
    'description_product': 'Varchar_descripcion',
    'shops_key': 'Varchar_llave_foranea_shops'
  };

  Map<String, dynamic> shops = {
    'name_shop': 'Varchar_Nombre_del_tienda',
    'description': 'Varchar_producto_descripcion',
    'inventory_products': 'Integer_cantidad',
    'logo': 'text_logo_tienda',
  };

  print(users);
  print(payments);
  print(shops);
  print(products);
}
