import 'package:flutter/material.dart';
import 'package:scoutingapp/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scoutingapp/firebase_options.dart';
import 'package:scoutingapp/pages/scouting_form.dart';
import 'package:scoutingapp/pages/home_page.dart';

//import 'dart:async';
//import 'dart:convert';

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

/*
  
      DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.checklist), text: "Scouting"),
                Tab(icon: Icon(Icons.pie_chart), text: "Data"),
                Tab(icon: Icon(Icons.settings), text: "Settings")
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  Container(
                      height: 500,
                      color: Colors.amber,
                      child: const Center(child: Text("Test A"))),
                  Container(
                      height: 500,
                      color: Colors.blue,
                      child: const Center(child: Text("Test B"))),
                  Container(
                      height: 500,
                      color: Colors.red,
                      child: const Center(child: Text("Test C")))
                ],
                
              ),
              const Icon(Icons.portable_wifi_off),
              const Icon(Icons.directions_bike),
              Center(child: Image.asset('assets/corvoid.png'))
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> fmain() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

// Ideal time to initialize
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
//...
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
  FirebaseAuth.instance.idTokenChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
  FirebaseAuth.instance.userChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
}
/*
class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  TestAppState createState() {
    return TestAppState();
  }
}

class TestAppState extends State<TestApp> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

/*
Future<FRCMatch> fetchFRCMatch() async {
  final response = await http.get(
    Uri.parse('https://www.thebluealliance.com/api/v3/event/UTWV/matches'),
    // Send authorization headers to the backend.
    headers: {
      'Authorization':
          'Basic Fj485dugUX8dImx6pzrertHb2LaBeqySHRnYEOoINkNEnygVT4haZdWlaisz1564',
    },
  );
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return FRCMatch.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else if (response.statusCode == 401) {
    throw Exception('401: Unauthorized -  Is your TOKEN correct?');
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Server Encounted an Error (failed to fetch match data)');
  }
}

class FRCMatch {
  final String match_number;

  const FRCMatch({
    required this.match_number,
  });

  factory FRCMatch.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'match_number': String match_number,
      } =>
        FRCMatch(
          match_number: match_number,
        ),
      _ => throw const FormatException('Failed to load match ID.'),
    };
  }
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<FRCMatch> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchFRCMatch();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              */
              */
              */