import 'dart:convert';

import 'package:api/core/config/api.dart';
import 'package:flutter/services.dart';

class ApiInit {
  String get _file => 'assets/config/api.json';

  Future<Api> init() async {
    String _data = await rootBundle.loadString(_file);
    Map<String, dynamic> _jsonData =
        Map<String, dynamic>.from(jsonDecode(_data));

    return Api(_jsonData);
  }
}
