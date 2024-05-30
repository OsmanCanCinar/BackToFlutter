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
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text('settings'),
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/settings');
              },
              icon: const Icon(Icons.settings))
        ],
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
              // onPressed: () async {
                onPressed: () { // Since I don't return and use its value, I can use it like this.
                //await navigate(context); // Since I don't return and use its value, I can use it like this.
                navigate(context);
              },
              child: const Text('Go'))
        ],
      ),
      // body: const StackWidget(),
      // body: const LayoutWidget(),
    );
  }

  Future<void> navigate(BuildContext context) async {
    try {
      bool? result = await getAnswer(context);
      print(result);
      
      if (result == true) {
        throw 'ERROR';
      } else {
        result = await Navigator.of(context)
            .push<bool>(MaterialPageRoute(builder: (context) {
          return WillPopScope(
            child: const DefaultWidget(type: 1),
            //Does not filter navigator.pop
            onWillPop: () async {
              print("will pop - false");
              return true;
              // return false;
            },
          );
        }));
      }

      if (result == true) {
        print(result);
      }
    } catch (e) {

    } finally {

    }

    // result.then((bool? value) => {
    //           if (value == true)
    //             {throw 'ERROR'}
    //           else
    //             {
    //               Navigator.of(context).push<bool>(
    //                   MaterialPageRoute(builder: (context) {
    //                 return WillPopScope(
    //                   child: const DefaultWidget(type: 1),
    //                   //Does not filter navigator.pop
    //                   onWillPop: () async {
    //                     print("will pop - false");
    //                     return true;
    //                     // return false;
    //                   },
    //                 );
    //               }))
    //             }
    //         })
    //     .onError((error, stackTrace) => {})
    //     .whenComplete(() => {})
    //     .then((value) => {});
    // print('while result is calculated..');
  }

  Future<bool?> getAnswer(BuildContext context) async {
      bool? result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      // final Future<bool?> result = Navigator.of(context).push<bool>(MaterialPageRoute(builder: (context) {
      return WillPopScope(
        //Does not filter navigator.pop
        onWillPop: () async {
          print("will pop - true");
          return true;
          // return false;
        },
        child: const DefaultWidget(type: 0),
      );
    }));
    return result;
  }
}

class DefaultWidget extends StatelessWidget {
  final int type;

  const DefaultWidget({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter Demo'),
        ),
        body: Column(children: [
          const Text('sass'),
          ElevatedButton(
            onPressed: () {
              if (type == 0) {
                Navigator.of(context).maybePop(false);
              } else if (type == 1) {
                Navigator.of(context).maybePop(true);
              }
            },
            child: const Text('go back'),
          ),
        ]));
  }
}
