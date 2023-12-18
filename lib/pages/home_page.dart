import 'package:flutter/material.dart';
import 'package:flutter_starter/view_model/user/user_view_model.dart';
import 'package:provider/provider.dart';
import '../view_model/counter/counter_view_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late UserViewModel userViewModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      userViewModel = Provider.of<UserViewModel>(context,listen: false);
      await userViewModel.getUserDetail();
    });

    

  }
  
  @override
  Widget build(BuildContext context) {
    userViewModel = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text( ""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
