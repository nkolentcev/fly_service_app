import 'package:flutter/material.dart';

class WorkScreen extends StatefulWidget {
  final String someData;
  const WorkScreen({required key, required this.someData}) : super(key: key);

  @override
  State<WorkScreen> createState() => _WorkScreenState(someData: this.someData);
}

class _WorkScreenState extends State<WorkScreen> {
  String someData;
  _WorkScreenState({
    required this.someData,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(someData),
        ],
      ),
    );
  }
}
