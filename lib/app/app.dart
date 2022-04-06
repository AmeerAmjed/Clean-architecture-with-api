import 'package:api/app/binding/home.dart';
import 'package:api/app/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Api example',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialBinding: HomeBinding(),
      home: Home(title: 'News'),
    );
  }
}
