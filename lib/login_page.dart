import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomPaint(
                  size: Size(width / 1.2, (height * 0.36).toDouble()),
                  painter: RPSCustomPainter(),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .16,
                  left: width * .1,
                  child: const Center(
                      child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 26),
                  )),
                ),
                CustomPaint(
                  size: Size(
                      width,
                      (height * 0.48)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: TCustomPainter(),
                ),
                CustomPaint(
                  size: Size(
                      width,
                      (height * 0.48)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RightCustomPainter(),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(StadiumBorder())),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 4, 52, 89)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(size.width * 0.3750625, size.height);
    path0.quadraticBezierTo(size.width * 0.4553250, size.height * 0.9872167,
        size.width * 0.4870750, size.height * 0.8762833);
    path0.quadraticBezierTo(size.width * 0.5534375, size.height * 0.6576333,
        size.width * 0.7525000, size.height * 0.0016667);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RightCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7514286, 0);
    path0.quadraticBezierTo(size.width * 0.5447286, size.height * 0.5913800,
        size.width * 0.4621429, size.height * 0.7920000);
    path0.quadraticBezierTo(size.width * 0.4322286, size.height * 0.9388800,
        size.width * 0.5442857, size.height * 0.9720000);
    path0.quadraticBezierTo(size.width * 0.8137500, size.height * 0.9716250,
        size.width * 0.9035714, size.height * 0.9715000);
    path0.quadraticBezierTo(size.width * 0.9300857, size.height * 0.9662600,
        size.width * 0.9453571, size.height * 0.9505000);
    path0.lineTo(size.width, size.height * 0.8440000);
    path0.lineTo(size.width * 0.9985714, size.height * 0.0040000);
    path0.lineTo(size.width * 0.7514286, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(129, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7642857, 0);
    path0.lineTo(size.width * 0.5621429, size.height * 0.6355000);
    path0.quadraticBezierTo(size.width * 0.4003571, size.height * 0.6558800,
        size.width * 0.4017857, size.height * 0.4960000);
    path0.quadraticBezierTo(size.width * 0.4411571, size.height * 0.3670000,
        size.width * 0.5646429, 0);
    path0.quadraticBezierTo(size.width * 0.6715179, size.height * 0.0006250,
        size.width * 0.6857143, 0);
    path0.quadraticBezierTo(size.width * 0.6700000, size.height * 0.0030000,
        size.width * 0.6817857, size.height * 0.0025000);
    path0.lineTo(size.width * 0.7107143, 0);
    path0.lineTo(size.width * 0.7271429, 0);
    path0.lineTo(size.width * 0.7289286, 0);
    path0.lineTo(size.width * 0.7642857, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
