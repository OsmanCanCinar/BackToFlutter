import 'package:flutter/material.dart';

void main() {
  print("main function RunApp is called with MyApp parameter");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    print("MyApp constructor is called");
  }

  // This widget is the root of your application.abcœœ
  @override
  Widget build(BuildContext context) {
    print("MyApp build is called");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // ¨¨ææ´¬≥÷≤µ|{[[[|[|[[[[((-888s is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title}) {
    print("MyHomePage constructor is called");
  }

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    print("_MyHomePageState constructor is called");
  }

  @override
  void initState() {
    super.initState();
    print("_MyHomePageState initState is called");
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      print("_MyHomePageState _incrementCounter is called");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("_MyHomePageState build is called");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextWidget('inner value $_counter'),
            Counter(
              'outer value $_counter',
              initialVal: 3,
            ),
            const ButtonWrapper(),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ButtonWrapper extends StatefulWidget {
  const ButtonWrapper({super.key});

  @override
  State<ButtonWrapper> createState() => _ButtonWrapperState();
}

class _ButtonWrapperState extends State<ButtonWrapper> {
  int flag = 0;
  String request = '';
  bool isChecked = false;
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomEditTextFiled(request: request),
          Text(text),
          Checkbox(
              value: isChecked,
              onChanged: (value) {
                print(value);
                setState(() {
                  if (value != null) {
                    isChecked = value;
                  }
                });
              }),
          ElevatedButton(
              onPressed: flag == 0
                  ? () {
                      print('0');
                      setState(() {
                        flag = (flag + 1) % 3;
                        request = "zero";
                      });
                    }
                  : null,
              child: Text('0')),
          ElevatedButton(
              onPressed: flag == 1
                  ? () {
                      print('1');
                      setState(() {
                        flag = (flag + 1) % 3;
                        request = "one";
                      });
                    }
                  : null,
              child: Text('1')),
          ElevatedButton(
              onPressed: flag == 2
                  ? () {
                      print('2');
                      setState(() {
                        flag = (flag + 1) % 3;
                        request = "two";
                      });
                    }
                  : null,
              child: Text('2')),
        ],
      ),
    );
  }
}

class CustomEditTextFiled extends StatefulWidget {
  final String request;

  const CustomEditTextFiled({super.key, required this.request});

  @override
  State<CustomEditTextFiled> createState() => _CustomEditTextFiledState();
}

class _CustomEditTextFiledState extends State<CustomEditTextFiled> {

  //TextEditingController controller = TextEditingController();
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      print('value has changed, new value is ${controller.text}');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CustomEditTextFiled oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.request != widget.request) {
      controller.text = widget.request;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (value) {
        print(value);
        // setState(() {
        //   text = value;
        // });
      },
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              controller.text = '';
            },
      ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String content;

  const TextWidget(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}

class Counter extends StatefulWidget {
  final String content;
  final int initialVal;

  const Counter(this.content, {super.key, required this.initialVal});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _count = widget.initialVal;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Text('${widget.content} $_count'));
  }
}
