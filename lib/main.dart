import 'package:chateo/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:chateo/domain/core/injection/injectable.dart';
import 'package:injectable/injectable.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  Paint.enableDithering = true;
  runApp(App());
}
