import 'package:flutter/material.dart';

class DashedLines extends StatelessWidget {
  const DashedLines({Key? key, this.height = 1, this.color = Colors.black, required this.direction})
      : super(key: key);
  final double height;
  final Color color;
final Axis direction;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 3.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: direction,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(dashCount, (_) {
            
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}