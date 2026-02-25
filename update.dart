
import 'dart:io';


void update(productos) {
  if (productos.isEmpty) {
    print(">> No hay productos para actualizar.");
    return;
  }

  stdout.write("Ingrese el número del producto a modificar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? "");

  if (indice != null && indice > 0 && indice <= productos.length) {
    int pos = indice - 1;
    print("Modificando: ${productos[pos]['nombre']}");

    // Mejora: Solo actualiza si el usuario escribe algo
    stdout.write("Nuevo nombre (actual: ${productos[pos]['nombre']}): ");
    String? nNombre = stdin.readLineSync();
    if (nNombre != null && nNombre.isNotEmpty) productos[pos]['nombre'] = nNombre;

    stdout.write("Nuevo precio (actual: ${productos[pos]['precio']}): ");
    String? nPrecio = stdin.readLineSync();
    if (nPrecio != null && nPrecio.isNotEmpty) productos[pos]['precio'] = nPrecio;

    stdout.write("Nueva cantidad (actual: ${productos[pos]['cantidad']}): ");
    String? nCant = stdin.readLineSync();
    if (nCant != null && nCant.isNotEmpty) {
      productos[pos]['cantidad'] = int.tryParse(nCant) ?? productos[pos]['cantidad'];
    }

    print(">> Producto actualizado correctamente.");
  } else {
    print(">> ERROR: Índice no válido.");
  }
}