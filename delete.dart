
import 'dart:io';


void delete(productos) {
 

  // --- ELIMINAR PRODUCTO ---
        if (productos.isEmpty) {
          print(">> No hay productos para eliminar.");
          
        }
        stdout.write("Ingrese el número del producto a eliminar: ");
        int? eliminarIndice = int.tryParse(stdin.readLineSync() ?? "");

        if (eliminarIndice != null && eliminarIndice > 0 && eliminarIndice <= productos.length) {
          productos.removeAt(eliminarIndice - 1);
          print(">> Producto eliminado de la lista.");
        } else {
          print(">> ERROR: Índice no encontrado.");
        }

}