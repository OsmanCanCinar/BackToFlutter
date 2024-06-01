import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final list = [1,2,3,4,5];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.add),
              trailing: const Icon(Icons.minimize),
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        //leading: const Icon(Icons.javascript), // IT will overlap with up back navigation. dont use with pushed widgets
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.dangerous),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.g_mobiledata)),
          TextButton(onPressed: () {}, child: const Text('lost'))
        ],
        title: const Text('yeah'),
      ),
      // body: const ExerciseWidget(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    key: ValueKey(index),
                    leading: const Icon(Icons.add),
                    title: Text("Can $index"),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(color: Colors.black);
                },
                itemCount: list.length,
            ),
          ),
          Table(
            children: const <TableRow>[
              TableRow(
                children: [
                  Text('1'),
                  Text('1'),
                ]
              ),  TableRow(
                children: [
                  Text('1'),
                  Text('1'),
                ]
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shop_two),
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Hey!')));
        },
      ),
    );
  }
}

class ExerciseWidget extends StatelessWidget {
  const ExerciseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            margin: const EdgeInsets.all(10.2),
            child: const SafeArea(
              child: Text(
                style: DefaultTextStyle(style: style, child: child)
                'hey',
                textScaler: TextScaler.linear(3.0),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Container(
            color: Colors.blue,
            child: const SafeArea(
              child: Text(
                'heye',
                textScaler: TextScaler.linear(3.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 150,
            height: 300,
            color: Colors.green,
            child: const SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'heya',
                    textScaler: TextScaler.linear(3.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(20.0),
              child: const SafeArea(
                child: Text(
                  'heyo',
                  textScaler: TextScaler.linear(3.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          AspectRatio(
            aspectRatio: 4,
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(20.0),
              child: const SafeArea(
                child: Text(
                  'heyo',
                  textScaler: TextScaler.linear(3.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          PhysicalModel(
            color: Colors.green,
            elevation: 20,
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(20.0),
              child: const SafeArea(
                child: Text(
                  'heyo',
                  textScaler: TextScaler.linear(3.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(20.0),
            child: const SafeArea(
              child: Text(
                'heyo',
                textScaler: TextScaler.linear(3.0),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(20.0),
            child: const SafeArea(
              child: Text(
                'heyo',
                textScaler: TextScaler.linear(3.0),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(20.0),
            child: const SafeArea(
              child: Text(
                'heyo',
                textScaler: TextScaler.linear(3.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
