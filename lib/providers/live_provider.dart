import 'package:flutter_template/providers/provider.dart';
import 'package:flutter_template/services/example/example_service.dart';
import 'package:flutter_template/services/example/live_example_service.dart';

class LiveProvider extends Provider {
  String baseUrl;

  LiveProvider(this.baseUrl);

  @override
  initServices() {
    super.initServices();
    getIt.registerSingleton<ExampleService>(LiveExampleService(baseUrl));
  }
}
