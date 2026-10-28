import 'agenda.dart';
void main(){
  final agenda = Agenda();

  print('Tareas iniciales: ${agenda.tareas}');
  agenda.eliminar(1);
  print('Tareas después de eliminar: ${agenda.tareas}');

  // El usuario se arrepiente de borrar tarea
  agenda.deshacer();
  print('Tareas después de deshacer: ${agenda.tareas}');
  
}