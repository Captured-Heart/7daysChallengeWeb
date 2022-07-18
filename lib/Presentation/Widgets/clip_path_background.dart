import 'package:flutter/material.dart';
import 'package:seven_days_web/src/utils/responsive.dart';

class ClipLeftBackground extends StatelessWidget {
  const ClipLeftBackground({
    Key? key,
    // required this.size,
    required this.widget,
    required this.left,
  }) : super(key: key);

  // final Size size;
  final Widget widget;
  final bool left;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      // alignment: Alignment.bottomCenter,
      children: [
        ClipPath(
          // ignore: sort_child_properties_last
          child: Container(
            height: Responsive.isMobile(context)
                ? size.height * 0.3
                : size.height * 0.4,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: left ? const Color(0xff483134) : const Color(0xff171721),
              //TODO: ADD NEUMORPHISM TO CONTAINER
            ),
          ),
          clipper: left ? CustomClipPath() : CustomClipRightPath(),
        ),
        left
            ? Positioned(
                left: 10,
                bottom: 25,
                child: widget,
              )
            : Positioned(
                right: 0,
                bottom: 25,
                child: widget,
              )
      ],
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.01022495, 0);
    path_0.lineTo(size.width * 0.9693252, 0);
    path_0.lineTo(size.width * 0.6421247, size.height * 0.9305556);
    path_0.lineTo(size.width * 0.01022495, size.height * 0.9305556);
    path_0.lineTo(size.width * 0.01022495, 0);
    path_0.close();
    // path.lineTo(-100, size.height);
    // path.lineTo(size.width, size.height * 0.75);
    // path.lineTo(size.width, size.height); //right
    // path.lineTo(size.width, 0); //top
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class CustomClipRightPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2964078, 0);
    path_0.lineTo(size.width * 0.9705882, 0);
    path_0.lineTo(size.width * 0.9705882, size.height * 0.9288256);
    path_0.lineTo(size.width * 0.009803922, size.height * 0.9288256);
    path_0.lineTo(size.width * 0.2964078, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
