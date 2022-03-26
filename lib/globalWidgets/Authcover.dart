import 'package:flutter/material.dart';

class AuthCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Customshape(),
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width * 1,
        //height: MediaQuery.of(context).size.height * 0.6,
      ),
    );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
