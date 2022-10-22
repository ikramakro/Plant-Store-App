// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartContainer extends StatelessWidget {
  String path, bigtext, price;
  CartContainer(
      {Key? key,
      required this.path,
      required this.bigtext,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 100, width: 100, child: Image.asset(path)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bigtext,
                style: const TextStyle(fontSize: 18),
              ),
              const Text('it\'s  Allium flower'),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Icon(
                        Icons.remove,
                        size: 10,
                      ),
                    ),
                  ),
                  Text('  3  '),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Icon(
                        Icons.add,
                        size: 10,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Icon(Icons.more_vert), Text(price)],
          ),
        ],
      ),
    );
  }
}
