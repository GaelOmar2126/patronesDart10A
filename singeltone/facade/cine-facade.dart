import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

class CineFacade {
  final Proyector _proyector;
  final SistemaAudio _audio;
  final Reproductor _reproductor;

  // Constructor
  CineFacade(this._proyector, this._audio, this._reproductor);

  void verPeliculas(String, Pelicula, int volumen) {
    _proyector.encender();
    _audio.encender();
    _audio.ajustarVolumen(volumen);
    _reproductor.reproducir(Pelicula);
  }

// Con facade se agrupan todos los llamados a clase y todos lo involucrados
  void terminarReproduccion() {
    _reproductor.detener();
    _audio.apagar();
    _proyector.apagar();
  }
}
