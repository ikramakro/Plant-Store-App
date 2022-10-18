import 'package:flutter/material.dart';
import 'package:plantapp/Screens/Custom%20Widget/CustomTextField.dart';

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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: SizedBox(
                    child: Column(children: [
                      const Text(
                        'Register ',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
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
                          'Register your self in our app and\n enjoy your jurney '),
                    ]),
                  ),
                )
                // SizedBox(
                //   height: 240,
                // ),
                ,
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: ElevatedButton(
                    onPressed: () {},
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
                Wrap(children: const [
                  Text('Don\'t have account'),
                  Text(
                    '   SignUp?',
                    style: TextStyle(
                        color: Color(0xff184a2c), fontWeight: FontWeight.bold),
                  )
                ]),
              ]),
        ),
      ),
    );
  }
}
