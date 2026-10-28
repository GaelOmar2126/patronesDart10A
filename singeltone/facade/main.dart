import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final cine = CineFacade(Proyector(), SistemaAudio(), Reproductor());

  // Iniciar la Pelicula
  cine.verPeliculas('It', 25);

  // Detener la Pelicula
  cine.terminarReproduccion();

  // la fachada coordina todos los pasos para lograr el objeto
  // El ususario solo necesita conocer los metodos sencillos (verPelicula...)
  // El procedimiento se concentra en una sola clase (Facade)
  // El usuario (dev) no necesita conocer a las clases involucradas
  
}
