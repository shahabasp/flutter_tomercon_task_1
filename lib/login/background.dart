import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                'assets/images/img_1.png',
                width: size.width * 0.3,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/img.png',
                width: size.width * 0.4,
              )
          ),
          child,
        ],
      ),
    );
  }
}
