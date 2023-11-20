import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
abstract class SettingsSerializer<T extends Object> {
  Map<String, dynamic> toMap();
}

abstract class UniversalSettings {
  fromJson<T>(Map<String, dynamic> json);
  fromSettingsModel<T>(SettingsSerializer settings);
  Future<void>fromPathJson(String path);
  void clear();
  void setter(String key, dynamic value);
  T serializer<T>({required T Function(Map<String, dynamic>) fromMap, dynamic defaultValue});
  dynamic get(String key);
}

class _BaseSettings extends UniversalSettings {
  final Map<String, dynamic> _json = {};

  @override
  fromSettingsModel<T>(SettingsSerializer settings) {
    _json.addAll(settings.toMap());
  }

  @override
  dynamic get(String key) {
    return _json[key];
  }

  @override
  void setter(String key, value) {
    _json[key] = value;
  }

  @override
  fromJson<T>(Map<String, dynamic> json) {
    _json.addAll(json);
  }

  @override
  void clear() {
    _json.clear();
  }
  
  @override
  T serializer<T>({required T Function(Map<String, dynamic>) fromMap, dynamic defaultValue}) {
    return fromMap(defaultValue ?? _json);
  }
  
  @override
  fromPathJson(String path) async{
     String jsonString = await rootBundle.loadString(path);
  final jsonResponse = (json.decode(jsonString) as Map).cast<String, dynamic>();
  _json.addAll(jsonResponse);
  }
}

final universalSettings = _BaseSettings();
