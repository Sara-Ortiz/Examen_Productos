import 'dart:io';



// Función para el Punto 2: Promedio de Notas
void create(productos) {

  stdout.write("Digíte el nombre del producto: ");
  String nombre = stdin.readLineSync() ?? "";

  stdout.write("Digíte el precio del producto: ");
  String? precioResp = stdin.readLineSync();
  int? precio = int.tryParse(precioResp ?? "");

  stdout.write("Digíte la Cantidad disponible del producto: ");
  String? cantidadResp = stdin.readLineSync();
  int? cantidad = int.tryParse(cantidadResp ?? "");


  if (nombre.isNotEmpty && precio != null && cantidad != null) {
    Map<String, dynamic> nuevoProducto = {
      'nombre': nombre,
      'precio': precio,
      'cantidad': cantidad 
      };
      productos.add(nuevoProducto);
      print(">> ¡Producto guardado exitosamente!");
  } else {
    print(">> ERROR: Datos inválidos. El producto no se agregó.");
  }


}