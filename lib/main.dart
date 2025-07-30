import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app.dart';
import 'package:untitled/core/dependency_injection/dependency_injection.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<DependencyInjection>(() => DependencyInjection().init());
  runApp(const App());
}
