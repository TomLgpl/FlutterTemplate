import 'package:flutter_template/providers/provider.dart';
import 'package:flutter_template/repositories/example/dummy_example_repository.dart';
import 'package:flutter_template/repositories/example/example_repository.dart';

class DummyProvider extends Provider {
  DummyProvider();

  @override
  initRepositories() {
    super.initRepositories();
    getIt.registerSingleton<ExampleRepository>(DummyExampleRepository());
  }
}
