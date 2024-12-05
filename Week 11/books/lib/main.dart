import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farrel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = "";

  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/ExALEQAAQBAJ';
    final url = Uri.https(authority, path);
    return await http.get(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            ElevatedButton(
              onPressed: () {
                // Menambahkan logika dari gambar
                getData()
                    .then((response) {
                      if (response.statusCode == 200) {
                        final data = jsonDecode(response.body) as Map<String, dynamic>;
                        final title = data['volumeInfo']['title'] as String;
                        setState(() {
                          result = 'Judul Buku: $title';
                        });
                      } else {
                        setState(() {
                          result = 'Error: Gagal memuat data (kode status: ${response.statusCode})';
                        });
                      }
                    })
                    .catchError((error) {
                      setState(() {
                        result = 'An error occurred: $error';
                      });
                    });
              },
              child: const Text('GO!'),
            ),
            const SizedBox(height: 20), // Add spacing between button and text
            Text(result),
          ],
        ),
      ),
    );
  }
}
