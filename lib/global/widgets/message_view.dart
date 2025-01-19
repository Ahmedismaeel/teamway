import 'dart:math' as math; // import this

import 'package:flutter/material.dart';
import 'package:internal_app/global/widgets/colors.dart';

class Triangle extends CustomPainter {
  final Color bgColor;

  Triangle(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MessageWidget extends StatelessWidget {
  final Color? bgColor;
  final Widget message;
  const MessageWidget({
    super.key,
    required this.message,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: Triangle(bgColor ?? UiColors.white),
          ),
        ),
        Flexible(
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: bgColor ?? UiColors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: message),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 25.0, left: 18, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
