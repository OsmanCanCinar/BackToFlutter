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
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    //For adaptiveness
    final mediaQuery = MediaQuery.of(context);
    final screenSize = mediaQuery.size;
    final desiredWith = 440.0;
    final ratio = screenSize.width / desiredWith;

    return FractionallySizedBox(
      widthFactor: 1 / ratio,
      heightFactor: 1 / ratio,
      child: Transform.scale(
        scale: ratio,
        child: MediaQuery(
          data: mediaQuery.copyWith(
              viewInsets: mediaQuery.viewInsets.copyWith(
            bottom: mediaQuery.viewInsets.bottom / ratio,
          )),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text('Flutter Demo'),
            ),
            body: const Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Hey'),
              ],
            ),
            // body: const StackWidget(),
            // body: const LayoutWidget(),
          ),
        ),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.loose, children: [
      Positioned(
        bottom: 100,
        left: 100,
        child: Container(
          color: Colors.red,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('a'),
              Text('a'),
              Text('a'),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.blue,
        width: 150,
        height: 650,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('a'),
            Text('a'),
            Text('a'),
          ],
        ),
      ),
    ]);
  }
}

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 300,
          height: 150,
          color: colors[0],
          margin: const EdgeInsets.only(bottom: 15.9, left: 15.9, right: 5.9),
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
          padding: const EdgeInsets.symmetric(horizontal: 15.9, vertical: 5.9),
          child: Flexible(
            child: Text(
              'Lorem ipsum dolor sit amet',
              style: Theme.of(context).textTheme.headlineMedium,
              overflow: TextOverflow.fade,
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        Container(
          width: 300,
          height: 150,
          color: colors[2],
          padding: const EdgeInsets.fromLTRB(15.9, 5.9, 15.9, 5.9),
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
        ),
        Expanded(
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
    );
  }
}
