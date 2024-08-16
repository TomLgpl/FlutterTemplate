import 'package:flutter_template/model/mvvm/view_event.dart';

/// Base class for all event observers.
abstract class EventObserver {
  void notify(ViewEvent? event);
}