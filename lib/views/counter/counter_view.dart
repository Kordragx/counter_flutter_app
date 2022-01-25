import 'package:counter_app/views/counter/counter_content.dart';
import 'package:counter_app/views/custom/custom_floating_btn.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int count = 0;

  void increase() {
    count++;
    setState(() {});
  }

  void decrease() {
    count--;
    setState(() {});
  }

  void clear() {
    count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 18);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text('Home'),
        ),
      ),
      body: Content(textStyle: textStyle, count: count),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingBtn(
        increase: increase,
        decrease: decrease,
        clear: clear,
      ),
    );
  }
}
