import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farrel Edric',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  int lastNumber = 0;
  late StreamController<int> numberStreamController;
  late Stream<int> transformedStream;
  late NumberStream numberStream;

  @override
  void initState() {
    super.initState();

    // Inisialisasi stream
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // Stream dengan transformasi
    transformedStream = numberStreamController.stream.transform(
      StreamTransformer<int, int>.fromHandlers(
        handleData: (value, sink) {
          sink.add(value * 10); // Transformasi data
        },
        handleError: (error, stackTrace, sink) {
          sink.add(-1); // Tangani error dengan nilai default
        },
        handleDone: (sink) => sink.close(),
      ),
    );

    // Dengarkan stream hasil transformasi
    transformedStream.listen(
      (event) {
        setState(() {
          lastNumber = event;
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1; // Nilai default jika error
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Number Example'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              lastNumber.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: addRandomNumber,
              child: const Text('Generate Random Number'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int randomNumber = random.nextInt(10);
    numberStream.addNumberToSink(randomNumber);
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.add(newNumber);
  }

  void close() {
    controller.close();
  }
}
