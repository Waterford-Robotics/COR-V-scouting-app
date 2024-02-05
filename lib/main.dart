import 'package:flutter/material.dart';
import 'package:scoutingapp/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scoutingapp/firebase_options.dart';
import 'package:scoutingapp/pages/scouting_form.dart';

//import 'dart:async';
//import 'dart:convert';
// Run flutterfire configure after making any modification to its configuration
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: const WidgetTree(),
        routes: {
          '/scouting_form': (context) => const ScoutingPage(),
        });
  }
}
