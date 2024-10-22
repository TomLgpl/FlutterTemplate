import 'package:flutter_template/services/example_service.dart';
import 'package:flutter_template/transformers/example_transformer.dart';
import 'package:get_it/get_it.dart';

/// Provider for the transformers, the repositories and the services.
/// 
/// This class is responsible for initializing the objects and register them into the GetIt instance.
/// 
/// Every subclasses register their own transformers, repositories and services.
class Provider {
  final getIt = GetIt.instance;

  Provider() {
    initTransformers();
    initRepositories();
    initServices();
  }

  initTransformers() {
    getIt.registerSingleton<ExampleTransformer>(ExampleTransformer());
  }

  initRepositories() {}

  initServices() {
    getIt.registerSingleton<ExampleService>(ExampleServiceImpl());
  }
}
