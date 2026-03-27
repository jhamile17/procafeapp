import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../modelos/configuracion_model.dart';

class ConfiguracionService {

  static const String keyConfig = "configuracion_app";

  static Future<ConfiguracionModel> cargarConfiguracion() async {

    final prefs = await SharedPreferences.getInstance();

    final data = prefs.getString(keyConfig);

    if (data == null) {
      return ConfiguracionModel.defaultConfig();
    }

    final Map<String,dynamic> map = jsonDecode(data);

    return ConfiguracionModel.fromMap(map);
  }

  static Future<void> guardarConfiguracion(ConfiguracionModel config) async {

    final prefs = await SharedPreferences.getInstance();

    final json = jsonEncode(config.toMap());

    await prefs.setString(keyConfig, json);
  }
}