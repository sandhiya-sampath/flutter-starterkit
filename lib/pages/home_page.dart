import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/counter/counter_view_model.dart';
import '../util/decorators/decorators.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CounterViewModel counterViewModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      counterViewModel = Provider.of<CounterViewModel>(context,listen: false);
    });

  }

  @override
  Widget build(BuildContext context) {
    counterViewModel = Provider.of<CounterViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              ).paddingAll(16),
            Text(
              '${counterViewModel.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ).paddingAll(8),
          ],
        ).withCard(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterViewModel.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
