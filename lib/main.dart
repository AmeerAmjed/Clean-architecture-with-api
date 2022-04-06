import 'package:api/app/app.dart';
import 'package:api/core/config/app_init.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await App.init();
  runApp(const MyApp());
}
