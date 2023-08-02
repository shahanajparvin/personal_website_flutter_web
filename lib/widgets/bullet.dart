import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:personal_website/widgets/triangular_bullet.dart';

class Bullet extends StatelessWidget {
  final bool isBig;
  const Bullet({super.key, this.isBig = false});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 90 * math.pi / 180,
      child: CustomPaint(
        painter: TriangularBullet(),
        child:  SizedBox(
          height: isBig? 12:8,
          width: isBig? 14:10,
        ),
      ),
    );
  }
}
