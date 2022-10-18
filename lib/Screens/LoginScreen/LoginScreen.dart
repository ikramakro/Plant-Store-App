import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Image.network(
            'https://th.bing.com/th/id/OIP.620gkqFV3Xeyb0VG1-r2zgHaLH?pid=ImgDet&w=1000&h=1500&rs=1',
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            top: 40,
            left: 25,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: const Icon(
                Icons.arrow_back_ios_new_sharp,
              ),
            ),
          ),
          Positioned(
            top: 250,
            child: Container(
              height: 500,
              width: 400,
              color: Colors.amber,
              // decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 70),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text('Log in to your Account '),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[300],
                            filled: true,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(0, size.height, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
