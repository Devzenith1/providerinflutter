import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providerlist.dart';
//import 'package:proprovider/providerlist.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<providervar>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("second page"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const cart()));
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                value.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              //BUTTON
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              final count = context.read<providervar>();

              count.add();
            },
            child: const Icon(
              Icons.add,
            )),
      ),
    );
  }
}
