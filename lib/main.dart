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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Enter Your First Name',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Enter Your Last Name',
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Your Email Address',
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Enter Your Password Again',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.key, color: Colors.black, size: 25)
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
