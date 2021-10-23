import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class CountDown extends StatefulWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  _CountDownState createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  final CountdownController _controller = CountdownController(autoStart: true);

  @override
  Widget build(BuildContext context) {
    return Countdown(
      controller: _controller,
      seconds: 60,
      build: (_, double time) => Text(
        time.toString().length == 4
            ? time.toString().substring(0, 2)
            : time.toString().substring(0, 1),
        style: const TextStyle(fontSize: 14),
      ),
      interval: const Duration(seconds: 1),
    );
  }
}
