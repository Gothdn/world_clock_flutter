import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String time = 'loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', url: 'Europe/Berlin', flag: 'germany.png');
    await instance.getTime();
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(time),
            ]),
        ),
      ),
    );
  }
}
