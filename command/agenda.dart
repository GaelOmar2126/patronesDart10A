class Agenda {
  final tareas = [
    'Reunion con el equipo de desarrollo',
    'Enviar reporte de progreso',
    'Revisar correos electrónicos',
    'Planificar la próxima reunión',
    'Actualizar documentación del proyecto',
  ];

  // Estado de una tarea
  String? eliminada; // Guarda en nombre de la tarea eliminada
  int? posicionAnterior; // La poscicion de la tarea eliminada en la lista

  void eliminar(int posicion) {
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }

  // Ya no se quierre borrar la tarea, se quiere recuperar
  void deshacer() {
    final tarea = eliminada;
    final posicion = posicionAnterior;

    if (tarea != null && posicion != null) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }
}
