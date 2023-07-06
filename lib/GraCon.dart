import 'package:flutter/material.dart';

import 'dice.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GraCon extends StatelessWidget {
  const GraCon(this.color1, this.color2, {super.key});
  const GraCon.black({super.key})
      : color1 = Colors.black12,
        color2 = Colors.black87;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: dice(),
      ),
    );
  }
}
