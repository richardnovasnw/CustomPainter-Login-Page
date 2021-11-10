import 'package:canvas/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Center(
            child: ClipPath(
              clipper: CustomShapeClass(),
              child: Container(
                height: 400,
                width: 350,
                decoration: const BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.cyan, Colors.teal])),
              ),
            ),
          ),
          Container(
            height: 400,
            width: 350,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: LayoutBuilder(
              builder: (_, constraints) => Container(
                width: constraints.widthConstraints().maxWidth,
                height: constraints.heightConstraints().maxHeight,
                decoration: const BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.red])),
                child: CustomPaint(painter: PainterClass()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShapeClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class PainterClass extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0
      ..color = Colors.white;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
          const Rect.fromLTWH(20, 40, 100, 100), const Radius.circular(20)),
      paint,
    );
    canvas.drawCircle(Offset(size.width / 2, size.height / 2.7), 50, paint);
    canvas.drawRect(
      Rect.fromLTWH(size.width - 120, 40, 100, 100),
      paint,
    );

    final path = Path();
    path.moveTo(size.width * 0.8, size.height * 0.7);
    path.arcToPoint(
      Offset(size.width * 0.2, size.height * 0.7),
      radius: const Radius.circular(150),
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(PainterClass oldDelegate) => false;
}
