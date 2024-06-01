import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FormWidgets(),
    );
  }
}

class FormWidgets extends StatefulWidget {
  const FormWidgets({super.key});

  @override
  State<FormWidgets> createState() => _FormWidgetsState();
}

class _FormWidgetsState extends State<FormWidgets> {
  TextEditingController textEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w300,
            fontSize: 22),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Form Widgets'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.yellow,
                          height: 120.0,
                          alignment: Alignment.center,
                          child: const Text('Abc'),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.red,
                            height: 120.0,
                            alignment: Alignment.center,
                            child: const Text('Def'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: TextFormField(
                    onSaved: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Cannot be empty!";
                        } else {
                          return null;
                        }
                      } else {
                        return "Cannot be null!";
                      }
                    },
                    controller: textEditingController,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Transform(
                  transform: Matrix4.rotationZ(pi * 0.3),
                  // transform: Matrix4.rotationX(pi * 0.3),
                  // transform: Matrix4.rotationY(pi * 0.3),
                  child: ElevatedButton(
                      onPressed: () {
                        final isChecked = formKey.currentState?.validate();
                        if (isChecked == true) {
                          print('OK');
                        } else {
                          print('NOT OK');
                        }
                        formKey.currentState?.save();
                      },
                      child: const Text('Press')),
                ),
                Transform.rotate(
                  angle: (pi * 0.1),
                  child: ElevatedButton(
                      onPressed: () {
                        final isChecked = formKey.currentState?.validate();
                        if (isChecked == true) {
                          print('OK');
                        } else {
                          print('NOT OK');
                        }
                        formKey.currentState?.save();
                      },
                      child: const Text('Press')),
                ),
                Transform.scale(
                  scale: 3,
                  child: ElevatedButton(
                      onPressed: () {
                        final isChecked = formKey.currentState?.validate();
                        if (isChecked == true) {
                          print('OK');
                        } else {
                          print('NOT OK');
                        }
                        formKey.currentState?.save();
                      },
                      child: const Text('Press')),
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: FittedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('PRESS!'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('PRESS!'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('PRESS!'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
