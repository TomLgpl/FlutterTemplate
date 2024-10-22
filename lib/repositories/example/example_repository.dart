/// This is an example repository class.
/// It is used to fetch data from a data source.
/// 
/// As this class cannot be instantiated, a subclass will be created depending of the provider used.
abstract class ExampleRepository {
  /// Fetches a list of example data.
  Future<Map<String, dynamic>> fetchExampleData();
}