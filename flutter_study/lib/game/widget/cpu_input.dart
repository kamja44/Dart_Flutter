import 'package:flutter/material.dart';
import 'package:flutter_study/game/enum.dart';
import 'package:flutter_study/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;
  const CpuInput({required this.isDone, super.key, required this.cpuInput});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox.shrink(),
        ),
        Expanded(
          child: InputCard(
            child: getCpuInput(),
          ),
        ),
        const Expanded(
          child: SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(
      height: 80,
      child: Center(
        child: Text(
          "?",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
