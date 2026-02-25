void list(productos){

if (productos.isEmpty) {
          print(">> No hay productos registrados.");
        } else {
          print("\n--- LISTADO COMPLETO ---");
          for (int i = 0; i < productos.length; i++) {
            print("${i + 1}. [Nombre: ${productos[i]['nombre']}] [Precio: ${productos[i]['precio']}] [Cantidad disponible: ${productos[i]['cantidad']}]");
            /*print('Indice: ${i+1}');
            print('Nombre: ${productos['nombre']}');
            print('Precio: ${productos['precio']}');
            print('Cantidad disponible: ${productos['cantidad']}');
            print('---');*/
          }
        }
}
