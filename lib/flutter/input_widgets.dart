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
      home: const InputWidgets(),
    );
  }
}

enum Selection {
  neither,
  nor,
  selection,
}

const nameList = ["can", "osman", "cinar"];

class InputWidgets extends StatefulWidget {
  const InputWidgets({super.key});

  @override
  State<InputWidgets> createState() => _InputWidgetsState();
}

class _InputWidgetsState extends State<InputWidgets> {
  bool checkBoxFlag = false;
  bool switchFlag = false;
  Selection? selection = Selection.selection;
  String? dropDown;
  double sliderValue = 40.0;
  TextEditingController textEditingController = TextEditingController();

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
        title: const Text('Input Widgets'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.red,
                    activeColor: Colors.blue,
                    value: checkBoxFlag,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          checkBoxFlag = value;
                        } else {
                          checkBoxFlag != checkBoxFlag;
                        }
                      });
                    }),
                Text(checkBoxFlag ? "yeap" : "nah"),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Radio<Selection>(
                        value: Selection.neither,
                        groupValue: selection,
                        onChanged: (value) {
                          setState(() {
                            selection = value;
                          });
                        }),
                    Radio<Selection>(
                        value: Selection.nor,
                        groupValue: selection,
                        onChanged: (value) {
                          setState(() {
                            selection = value;
                          });
                        }),
                  ],
                ),
                Text(selection.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  items: nameList
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      dropDown = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Slider(
                    value: sliderValue,
                    min: 30,
                    max: 300,
                    onChanged: (double value) {
                      setState(() {
                        sliderValue = value;
                      });
                    }),
              ],
            ),
            TextField(
              controller: textEditingController,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text(textEditingController.text),
            Switch(
                value: switchFlag,
                onChanged: (value) {
                  setState(() {
                    switchFlag = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
