import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text('Hey'),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 450) {
                return const Row(children: [Text('2')]);
              } else {
                return const Row(children: [
                  Text('2'),
                  Expanded(child: Text('2')),
                ]);
              }
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Scaffold(
                      appBar: AppBar(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary,
                        title: const Text('Flutter Demo'),
                      ),
                      body: Column(children: [
                        const Text('sad'),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('go back'),
                        ),
                      ]));
                }));
              },
              child: const Text('Go'))
        ],
      ),
      // body: const StackWidget(),
      // body: const LayoutWidget(),
    );
  }
}
