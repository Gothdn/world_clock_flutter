import 'package:flutter/material.dart';

class ChooseLocationPage extends StatefulWidget {
  //final String title = 'Choose Location title';
  //const ChooseLocationPage({super.key, required this.title});

  final String? title;

  const ChooseLocationPage({super.key, this.title});

  @override
  State<ChooseLocationPage> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title ?? "Choose Location Page"),
      ),
      body: const SafeArea(
        child: Text('Choose Location Page'),
      ),
    );
  }
}
