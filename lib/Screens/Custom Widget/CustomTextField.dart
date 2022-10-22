// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String hinttxt;
  bool obsecure;
  var icon, surfixIcon;
  CustomTextfield(
      {Key? key,
      required this.hinttxt,
      required this.obsecure,
      required this.icon,
      this.surfixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          hintText: hinttxt,
          prefixIcon: icon,
          suffixIcon: surfixIcon,
          fillColor: const Color.fromARGB(255, 233, 230, 230),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 233, 230, 230),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 233, 230, 230),
              ))),
    );
  }
}
