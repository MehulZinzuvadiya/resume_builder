import 'package:flutter/material.dart';
import 'package:resume_builder/pdfGenerate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("My Resume"),
        actions: [
          IconButton(
              onPressed: () {
                pdfCreate();
              },
              icon: Icon(Icons.download_for_offline)),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 300,
            width: double.infinity,
            color: Colors.black26,
            child: Text(
              "My Resume",
              style: TextStyle(color: Colors.red, fontSize: 50),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("my new1"),
        ],
      ),
    ));
  }
}
