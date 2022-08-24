import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Widget button() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 64),
    child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.red],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: InkWell(
        onTap: () {},
        child: const SizedBox(
          height: 50,
          child: Center(
            child: Text(
              "ALLOW LOCATION",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            const Icon(
              Icons.share_location,
              size: 150,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Enable location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You'll need to enable your location\nin order to use Tinder",
              style: TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Container(),
            ),
            button(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "TELL ME MORE v",
                style: TextStyle(color: Colors.grey[500]),
              ),
            )
          ],
        ),
      )),
    );
  }
}
