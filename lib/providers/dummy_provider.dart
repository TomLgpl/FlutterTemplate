import 'package:flutter_template/providers/provider.dart';
import 'package:flutter_template/services/example/dummy_example_service.dart';
import 'package:flutter_template/services/example/example_service.dart';

class DummyProvider extends Provider {
  DummyProvider();

  @override
  initServices() {
    super.initServices();
    getIt.registerSingleton<ExampleService>(DummyExampleService());
  }
}
