//modificar el modelo de configuracion para agregar mas opciones
class ConfiguracionModel {
  bool notificacionesApp;
  bool sonidoAlerta;
  bool modoOscuro;
  bool vibracion;
  String tiempoSesion;

  ConfiguracionModel({
    required this.notificacionesApp,
    required this.sonidoAlerta,
    required this.vibracion,
    required this.modoOscuro,
    required this.tiempoSesion,
  });
  
  factory ConfiguracionModel.defaultConfig(){
    return ConfiguracionModel(
      notificacionesApp: true,
      sonidoAlerta: true,
      vibracion: true,
      modoOscuro: false,
      tiempoSesion: "30 minutos de inactividad",
    );
  }
}
