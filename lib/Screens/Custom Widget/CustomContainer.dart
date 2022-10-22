// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:plantapp/Screens/ItemDetailScreen/ItemDetailScreen.dart';

import '../HomeScreen/HomeScreen.dart';

class CustomContainer extends StatelessWidget {
  String path, name, price, type;
  // VoidCallback ontap;
  CustomContainer({
    Key? key,
    required this.path,
    required this.name,
    required this.price,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ItemDetailScreen()));
        },
        child: Stack(
          children: [
            const SizedBox(
              height: 290,
              width: 200,
              // color: Colors.green,
            ),
            Positioned(
              top: 60,
              child: Container(
                height: 235,
                width: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 242, 243),
                    borderRadius: BorderRadius.circular(20)),
                child: ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 186, 216, 213),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 90,
              right: 30,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(path),
              ),
            ),
            Positioned(
              top: 240,
              left: 10,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(type),
                  Row(
                    children: [
                      Text(name),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              price,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height / 2 + 70);

    var firstControlPoint = Offset(size.width / 2, size.height / 2 + 70);
    var firstPoint = Offset(size.width / 9, size.height / 2 + 70);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 4), size.height / 2 + 70);
    var secondPoint = Offset(size.width - 10, size.height - 200);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
