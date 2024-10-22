import 'package:flutter_template/model/class/example_class.dart';
import 'package:flutter_template/model/mvvm/view_events/update_view_event.dart';
import 'package:flutter_template/model/mvvm/view_model.dart';
import 'package:flutter_template/services/example_service.dart';
import 'package:get_it/get_it.dart';

class ExampleViewModel extends EventViewModel {
  // We initiate the GetIt instance to acceed the services
  final GetIt _getIt = GetIt.instance;

  late ExampleService _exampleService;

  // Value not accessible by the view
  // ignore: unused_field
  final String _privateValue;

  // Value accessible by the view
  String publicValue;

  ExampleViewModel(this._privateValue, this.publicValue) {
    // We get the service from the GetIt instance
    _exampleService = _getIt.get<ExampleService>();
  }

  // Method to change the value and notify the view
  void doSomething() async {
    // Change the value to the value retrieve by the service
    Example example = await _exampleService.fetchExampleData();
    publicValue = "[${example.name}] ${example.content}";

    // Notify the view to update
    notify(const UpdateViewEvent());
  }
}
