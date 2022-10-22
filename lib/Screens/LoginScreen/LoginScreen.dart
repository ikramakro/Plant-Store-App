import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:plantapp/Screens/Custom%20Widget/CustomTextField.dart';
import 'package:plantapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:plantapp/Screens/Register%20Screen/RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        const SizedBox(
          height: double.infinity,
          width: double.infinity,
        ),
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Image.network(
            'https://www.shutterstock.com/image-photo/green-leaf-600w-349371620.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          top: 250,
          child: Container(
            height: 498,
            width: 400,
            color: Colors.white,
            // decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 60),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome Back',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    const Text('Log in to your Account '),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                        hinttxt: 'Email',
                        obsecure: false,
                        icon: const Icon(Icons.mail)),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                        hinttxt: 'Password',
                        obsecure: true,
                        icon: const Icon(Icons.lock)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Term And Condition'),
                        Text(
                          'Forget Password',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.only(left: 125, right: 125),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff184a2c),
                            ),
                            foregroundColor: MaterialStateProperty.all(
                                const Color(0xffffffff))),
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(children: [
                      const Text('Don\'t have account'),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: const Text(
                          '   SignUp?',
                          style: TextStyle(
                              color: Color(0xff184a2c),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ]),
            ),
          ),
        ),
        Positioned(
            top: 250,
            left: 270,
            child: SizedBox(
                height: 100, width: 100, child: Image.asset('Assets/leaf.png')))
      ]),
    );
  }
}

class CustemShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height + 0.38);
    // path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
