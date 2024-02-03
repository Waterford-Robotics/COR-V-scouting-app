import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//add test input data to firestore
Future<void> uploadingData(String _testInput) async {
  await FirebaseFirestore.instance
      .collection("test")
      .add({'test_input': _testInput});
}

class ScoutingPage extends StatefulWidget {
  const ScoutingPage({Key? key}) : super(key: key);

  @override
  State<ScoutingPage> createState() => _ScoutingPageState();
}

class _ScoutingPageState extends State<ScoutingPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text('WIP Data Collector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: myController,
            ),
            //add a confirmation prompt to this and make it clear data
            ElevatedButton(
              onPressed: () {
                uploadingData(myController.text);
              },
              child: const Text('Upload Data'),
            ),
          ],
        ),
      ),
    );
  }
}
        

      // floatingActionButton: FloatingActionButton(
      //   // When the user presses the button, show an alert dialog containing
      //   // the text that the user has entered into the text field.
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (context) {
      //         return AlertDialog(
      //           // Retrieve the text the that user has entered by using the
      //           // TextEditingController.
      //           content: Text(myController.text),
      //         );
      //       },
      //     );
      //   },
      //   tooltip: 'Show me the value!',
      //   child: const Icon(Icons.text_fields),
      // ),
