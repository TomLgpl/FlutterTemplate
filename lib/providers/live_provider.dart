import 'package:flutter_template/providers/provider.dart';
import 'package:flutter_template/repositories/example/example_repository.dart';
import 'package:flutter_template/repositories/example/live_example_repository.dart';

class LiveProvider extends Provider {
  String baseUrl;

  LiveProvider(this.baseUrl);

  @override
  initRepositories() {
    super.initRepositories();
    getIt.registerSingleton<ExampleRepository>(LiveExampleRepository(baseUrl));
  }
}
