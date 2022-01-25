import 'package:flutter/material.dart';

class CustomFloatingBtn extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function clear;

  const CustomFloatingBtn({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.clear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => increase()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => decrease()),
      ],
    );
  }
}
