import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  const GlassBox({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  final _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(60),
    topRight: Radius.circular(60),
  );
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            //blur
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(),
            ),

            // gradient effect
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                ),
                borderRadius: _borderRadius,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
            ),

            //child
            Padding(
              padding: const EdgeInsets.all(20),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
