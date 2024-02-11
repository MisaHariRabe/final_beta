// import 'dart:io';

// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stress Question n°08',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Stress Question n°08'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Touchy',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioListTile(
                value: 'Did not applied to me',
                groupValue: 'Touchy',
                onChanged: null,
                title: Text('Did not applied to me'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioListTile(
                value: 'Applied to me to some degree, or some of the time',
                groupValue: 'Touchy',
                onChanged: null,
                title:
                    Text('Applied to me to some degree, or some of the time'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioListTile(
                value:
                    'Applied to me to a considerable degree or a good part of the time',
                groupValue: 'Touchy',
                onChanged: null,
                title: Text(
                    'Applied to me to a considerable degree or a good part of the time'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioListTile(
                value: 'Applied to me very much or most of the time',
                groupValue: 'Touchy',
                onChanged: null,
                title: Text('Applied to me very much or most of the time'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                ),
                child: Text(
                  'BACK',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
