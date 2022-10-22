import 'package:flutter/material.dart';
import 'package:plantapp/Screens/Custom%20Widget/CustomTextField.dart';
import 'package:plantapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:plantapp/Screens/LoginScreen/LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Column(children: [
                    const Text(
                      'Register ',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Create your new account',
                      style: TextStyle(color: Colors.grey[450]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextfield(
                        hinttxt: 'Full Name',
                        obsecure: false,
                        icon: const Icon(
                          Icons.person,
                          size: 20,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                        hinttxt: 'Abcd@gmail.com',
                        obsecure: false,
                        icon: const Icon(
                          Icons.mail,
                          size: 20,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                        hinttxt: 'Password',
                        obsecure: true,
                        icon: const Icon(
                          Icons.lock,
                          size: 20,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      hinttxt: 'Confirm Password',
                      obsecure: true,
                      icon: const Icon(
                        Icons.lock,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Register your self in our app and\n            enjoy your jurney '),
                  ]),
                ),
                Positioned(
                  top: 670,
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
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xffffffff))),
                    child: const Text('Sign Up'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 715, left: 60),
                  child: Wrap(children: [
                    const Text('I am have account'),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: const Text(
                        '   Login',
                        style: TextStyle(
                            color: Color(0xff184a2c),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                ),
                Positioned(
                  top: 120,
                  left: 210,
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset('Assets/leaf.png')),
                )
              ]),
        ),
      ),
    );
  }
}
