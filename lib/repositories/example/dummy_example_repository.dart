import 'package:flutter_template/repositories/example/example_repository.dart';

class DummyExampleRepository extends ExampleRepository {
  @override
  Future<Map<String, dynamic>> fetchExampleData() async {
    return {
      'name': 'Dummy content',
      'content': 'This is an example content.',
    };
  }
}