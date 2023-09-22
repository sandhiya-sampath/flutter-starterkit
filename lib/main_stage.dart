import 'package:flutter_starter/util/environment_config.dart';
import 'main.dart';
import 'package:flutter/material.dart';

void main() {
  // Set the desired environment
  EnvironmentConfig.setEnv(Environment.stage);
  runApp(const MyApp());
}
