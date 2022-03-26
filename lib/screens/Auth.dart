import 'package:flutter/material.dart';
import 'package:taxi_booking/globalWidgets/Authcover.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            children: [
              // Container(
              //   height: 100,
              //   color: Colors.blue,
              // ),
              Container(
                color: Colors.white,
                //color: Color(0xff2DBB54),
                height: MediaQuery.of(context).size.height * 0.65,
                width: 412,
                child: ClipPath(
                  clipper: Customshape(),
                  child: Container(
                    color: Color(0xff2DBB54),
                    height: MediaQuery.of(context).size.height * .3,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.none,
                      width: MediaQuery.of(context).size.width * 1,
                      //height: MediaQuery.of(context).size.height * 0.6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
