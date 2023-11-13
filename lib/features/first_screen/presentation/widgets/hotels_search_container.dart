import 'package:flutter/material.dart';


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0012500,size.height*0.8020000);
    path_0.lineTo(size.width*0.0012500,size.height*0.9980000);
    path_0.lineTo(size.width*0.4987500,size.height*1.0040000);
    path_0.lineTo(size.width*0.3750000,size.height*0.8020000);
    path_0.lineTo(size.width*-0.0012500,size.height*0.8020000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 19, 59, 122)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.4875000,size.height*1.0100000);
    path_1.lineTo(size.width*0.3625000,size.height*0.8100000);
    path_1.lineTo(size.width*-0.0012500,size.height*0.8100000);
    path_1.lineTo(size.width*-0.0012500,size.height*1.0020000);
    path_1.lineTo(size.width*0.4875000,size.height*1.0100000);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);


    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_1, paint_stroke_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}