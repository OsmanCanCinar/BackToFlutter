import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 300,
            height: 150,
            color: colors[0],
            margin: const EdgeInsets.only(bottom: 15.9,left: 15.9,right: 5.9),
            child: Text(
              'Lorem ipsum dolor sit amet',
              style: Theme.of(context).textTheme.headlineMedium,

            ),
          ),
          const Spacer(),
          Container(
            width: 300,
            height: 150,
            color: colors[1],
            padding: const EdgeInsets.symmetric(horizontal: 15.9,vertical: 5.9),
            child: Flexible(
              child: Text(
                'Lorem ipsum dolor sit amet',
                style: Theme.of(context).textTheme.headlineMedium,
                overflow: TextOverflow.fade,
              
                textDirection: TextDirection.rtl,
              ),
            ),
          ),Container(
            width: 300,
            height: 150,
            color: colors[2],
            padding: const EdgeInsets.fromLTRB(15.9,5.9,15.9,5.9),
            child: Text(
              maxLines: 2,
              'Lorem ipsum dolor sit amet asdasdasdasdasda',
              style: Theme.of(context).textTheme.headlineMedium,
              overflow: TextOverflow.ellipsis,
              textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.center,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: true,
                applyHeightToLastDescent: false,
                leadingDistribution: TextLeadingDistribution.even,
              ),
            ),
          ),Expanded(
            child: Container(
              width: 300,
              height: 150,
              color: colors[3],
              padding: const EdgeInsets.all(15.9),
              child: Text(
                'Lorem ipsum dolor sit amet',
                style: Theme.of(context).textTheme.headlineMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}