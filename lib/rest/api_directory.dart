import 'package:flutter_starter/util/environment_config.dart';

//class defines urls for all apis used by the restful service layer

class ApiDirectory {
  static final ApiDirectory instance = ApiDirectory._();
  ApiDirectory._();
  final String _baseUrl = EnvironmentConfig.apiUrl;

  //Simple Example
  // Uri getUserDetail() =>
  //     Uri.parse("$_baseUrl/user");
}
