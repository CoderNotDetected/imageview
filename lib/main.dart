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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ImageView(),
    );
  }
}

class ImageView extends StatelessWidget {
  List a = [
    "assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/images3.jpg",
    "assets/images/images4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Displaying Images"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Image.asset(a[index]);
        },
        itemCount: a.length,
      ),
    );
  }
}
