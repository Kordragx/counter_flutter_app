import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.textStyle,
    required this.count,
  }) : super(key: key);

  final TextStyle textStyle;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Hi New', style: textStyle),
        Text(
          'Times touched $count',
          style: const TextStyle(fontSize: 16),
        )
      ]),
    );
  }
}
