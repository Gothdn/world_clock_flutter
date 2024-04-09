import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home Page'),
            ElevatedButton.icon(
              icon: const Icon(Icons.edit_location),
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              label: const Text('Choose Location'),
            )
          ],
        ),
      ),
    );
  }
}

