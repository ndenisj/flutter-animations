// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/animated_builder_transform.dart';
import 'package:flutter_animations/screens/chained_animations.dart';
import 'package:flutter_animations/screens/cube_3d_animation.dart';
import 'package:flutter_animations/screens/hero_animation.dart';
import 'package:flutter_animations/screens/implicit_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Animations'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimatedBuilderAndTransform(),
                  ),
                );
              },
              child: Text("Animated Builder & Transform"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChainedAnimations(),
                  ),
                );
              },
              child: Text("Chained Animations"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cube3dAnimation(),
                  ),
                );
              },
              child: Text("3D Cube Animations"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroAnimation(),
                  ),
                );
              },
              child: Text("Hero Animations"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImplicitAnimation(),
                  ),
                );
              },
              child: Text("Implicit Animations"),
            ),
          ],
        ),
      ),
    );
  }
}
