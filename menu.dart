import 'dart:io';
import 'create.dart';
import 'listProducts.dart';
import 'update.dart';
import 'delete.dart';

void main() {
  List<Map<String, dynamic>> productos = [];
  bool continuar = true;

  while (continuar) {
    print("\n========== MENÚ DE PRODUCTOS ==========");
    print("1. Agregar Producto");
    print("2. Listar Productos");
    print("3. Actualizar Producto");
    print("4. Eliminar Producto");
    print("5. Salir");
    stdout.write("Seleccione una opción: ");
    
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        create(productos);
        print(" ");
        print("presione ENTER para continuar");
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '2':
        list(productos);
        print("");
        print("presione ENTER para continuar");
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '3':
        update(productos);
        print("");
        print("presione ENTER para continuar");
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '4':
        delete(productos);
        print("");
        print("presione ENTER para continuar");
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '5':
        // --- SALIR ---
        print("Cerrando sistema de biblioteca...");
        continuar = false;
        break;

      default:
        print(">> Opción inválida, elija un número del 1 al 5.");
    }
  }
}