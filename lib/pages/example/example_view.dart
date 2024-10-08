import 'package:flutter/material.dart';
import 'package:flutter_template/model/mvvm/widget_event_observer.dart';
import 'package:flutter_template/pages/example/example_view_model.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

// Should use WidgetEventObserver instead of StatefulWidget
class _ExamplePageState extends WidgetEventObserver<ExamplePage> {
  late final ExampleViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = ExampleViewModel("Private value", "Public value");
    viewModel.subscribe(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Template'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World!'),
            Text(viewModel.publicValue),
            ElevatedButton(
                onPressed: () {
                  viewModel.doSomething();
                },
                child: const Text('Do Something'))
          ],
        ),
      ),
    );
  }
}
