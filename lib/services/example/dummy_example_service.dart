import 'package:flutter_template/services/example/example_service.dart';

class DummyExampleService extends ExampleService {
  @override
  Future<Map<String, dynamic>> fetchExampleData() async {
    return {
      'name': 'Dummy content',
      'content': 'This is an example content.',
    };
  }
}
