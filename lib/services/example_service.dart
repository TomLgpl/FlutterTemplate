import 'package:flutter_template/model/class/example_class.dart';
import 'package:flutter_template/repositories/example/example_repository.dart';
import 'package:flutter_template/transformers/example_transformer.dart';
import 'package:get_it/get_it.dart';

/// Service for the example data.
/// 
/// We should always use an abstraction layer to easily test it
abstract class ExampleService {
  Future<Example> fetchExampleData();
}

/// Implementation of the [ExampleService].
class ExampleServiceImpl implements ExampleService {
  final GetIt _getIt = GetIt.instance;

  late ExampleRepository _exampleRepository;
  late ExampleTransformer _exampleTransformer;

  ExampleServiceImpl({ExampleRepository? exampleRepository, ExampleTransformer? exampleTransformer}) {
    _exampleRepository = exampleRepository ?? _getIt.get<ExampleRepository>();
    _exampleTransformer = exampleTransformer ?? _getIt.get<ExampleTransformer>();
  }

  Future<Example> fetchExampleData() async {
    final Map<String, dynamic> data = await _exampleRepository.fetchExampleData();
    return _exampleTransformer.fromJson(data);
  }
}
