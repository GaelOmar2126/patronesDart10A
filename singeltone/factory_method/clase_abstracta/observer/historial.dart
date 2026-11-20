import 'observador.dart';

class Historial implements Observador {
  @override
  void actualizar(String tarea) {
    // Recibe la nueva tarea y la almacena en el historial
    //El historial ouede ser local
    //en memoria: una lista de tareas
    //una base de datos local: SQLite
    //o puede estar en la nube
    print('Historial: guardar: registrar nueva tarea: $tarea');
  }
}
