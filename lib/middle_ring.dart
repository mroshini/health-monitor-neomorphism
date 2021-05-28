import 'package:flutter/material.dart';
import 'package:your_health/res/colors.dart';

class MiddleRing extends StatelessWidget {
  final double width;

  const MiddleRing({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: width * 0.3,
          width: width * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.1)),
            boxShadow: [
              // Edge shadow

              BoxShadow(
                offset: Offset(-1.5, -1.5),

                color:Colors.grey[200]!,// backgroundColor,

                spreadRadius: 2.0,

                // blurRadius: 0,
              ),

              // Circular shadow

              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.white,
                spreadRadius: 2.0,
                blurRadius: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
