import 'package:flutter_template/services/example/example_service.dart';

class LiveExampleService extends ExampleService {
  String baseUrl;

  LiveExampleService(this.baseUrl);

  @override
  Future<Map<String, dynamic>> fetchExampleData() async {
    await Future.delayed(const Duration(seconds: 2));
    return {
      'name': 'Live Example',
      'content': 'This is a live example content fetched from $baseUrl.',
    };
  }
}
