import 'package:flutter_template/repositories/example/example_repository.dart';

class LiveExampleRepository extends ExampleRepository {
  String baseUrl;

  LiveExampleRepository(this.baseUrl);

  @override
  Future<Map<String, dynamic>> fetchExampleData() async {
    await Future.delayed(const Duration(seconds: 2));
    return {
      'name': 'Live Example',
      'content': 'This is a live example content fetched from $baseUrl.',
    };
  }
}