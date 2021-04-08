import 'dart:math';

import "package:flutter/material.dart";
import 'package:flutter_app_ui/data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: primaryColor
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: customShadow,
              color: primaryColor
              )
              ),
            )
          ]
        )
      ),
    );
  }
}

class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2, size.height/2);
    var paint = new Paint()..style=PaintingStyle.stroke..strokeWidth=27;
    double total = 0;
    expenses.forEach((element) {
      total+=element["amount"];
    });
    var startRadian = -pi/2;
    for(int i = 0; i<expenses.length; i++){
      var currentExpense = expenses[i];
      var sweetRadian = (currentExpense["amount"]/total)*2*pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweetRadian, false, paint);
      startRadian = sweetRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }

}
