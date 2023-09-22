import 'package:flutter/material.dart';
import 'package:flutter_starter/util/environment_config.dart';
import 'main.dart';

void main() {
  // Set the desired environment
  EnvironmentConfig.setEnv(Environment.prod);
  runApp(const MyApp());
}
