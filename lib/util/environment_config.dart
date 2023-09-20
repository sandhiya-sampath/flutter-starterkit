enum Environment { dev, qa, stage, prod }

class EnvironmentConfig {
  static late String apiUrl;
  static late String imageUrl;
  static late Environment environment;
  EnvironmentConfig._();

  static void setEnv(Environment env) {
    environment = env;
    switch (env) {
      case Environment.dev:
        environment = Environment.dev;
        apiUrl = 'https://api.dev.example.com';
        imageUrl = 'https://images.dev.example.com';
        break;
      case Environment.qa:
        environment = Environment.qa;
        apiUrl = 'https://api.qa.example.com';
        imageUrl = 'https://images.qa.example.com';
        break;
      case Environment.stage:
        environment = Environment.stage;
        apiUrl = 'https://api.stage.example.com';
        imageUrl = 'https://images.stage.example.com';
        break;
      case Environment.prod:
        environment = Environment.prod;
        apiUrl = 'https://api.example.com';
        imageUrl = 'https://images.example.com';
        break;
    }
  }
}
