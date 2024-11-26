import 'package:everlook_mobile/source/imports.dart';
import 'dart:math' as math;

class CustomIcons {
  static CustomPaint buttonArrow({
    Size? size,
  }) {
    return CustomPaint(
      size: size ?? const Size(181, 45),
      painter: _ButtonArrow(),
    );
  }
}

class _ButtonArrow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Вычисляем масштаб для сохранения пропорций
    double scale = math.min(size.width / 179, size.height / 46);

    // Создаём матрицу трансформации
    canvas.scale(scale);

    Path path_0 = Path();
    path_0.moveTo(0, 4);
    path_0.cubicTo(0, 1.79086, 1.79086, 0, 4, 0);
    path_0.lineTo(162.392, 0);
    path_0.cubicTo(163.771, 0, 165.052, 0.709708, 165.783, 1.87821);
    path_0.lineTo(177.672, 20.8782);
    path_0.cubicTo(178.484, 22.1762, 178.484, 23.8238, 177.672, 25.1218);
    path_0.lineTo(165.783, 44.1218);
    path_0.cubicTo(165.052, 45.2903, 163.771, 46, 162.392, 46);
    path_0.lineTo(4, 46);
    path_0.cubicTo(1.79086, 46, 0, 44.2091, 0, 42);
    path_0.lineTo(0, 4);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff0459FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
