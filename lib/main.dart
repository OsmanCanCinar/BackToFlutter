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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              margin: const EdgeInsets.all(10.2),
              child: const SafeArea(
                child: Text(
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
