import 'package:flutter_template/model/mvvm/view_events/update_view_event.dart';
import 'package:flutter_template/model/mvvm/view_model.dart';

class ExampleViewModel extends EventViewModel {
  // Value not accessible by the view
  // ignore: unused_field
  final String _privateValue;

  // Value accessible by the view
  String publicValue;

  ExampleViewModel(this._privateValue, this.publicValue);

  // Method to change the value and notify the view
  void doSomething() {
    // Change the value to new value (it's available in the view)
    publicValue = 'New value';

    // Notify the view to update
    notify(const UpdateViewEvent());
  }
}
