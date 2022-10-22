import 'package:flutter/material.dart';
import 'package:plantapp/Screens/CartScreen/CartScreen.dart';
import 'package:plantapp/Screens/Custom%20Widget/CustomCircularContainer.dart';
import 'package:provider/provider.dart';

import 'ItemDetailScreenViewModel.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itempro = Provider.of<ItemProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 159, 194, 194),
      body: Stack(children: [
        const SizedBox(
          height: 400,
          width: 300,
          child: Padding(
            padding: EdgeInsets.only(top: 0, left: 60),
            child: Image(
              image: AssetImage('Assets/Images/flowerpot (6).png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: .2,
          minChildSize: .2,
          maxChildSize: .6,
          builder: (context, scrollController) {
            return Center(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: ListView(controller: scrollController, children: [
                    Divider(indent: 120, thickness: 3, endIndent: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Schefflera',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '\$430 ',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color(0xff184a2c),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    itempro.decrement();
                                  },
                                ),
                                Consumer<ItemProvider>(
                                  builder: (context, value, child) {
                                    return Text(
                                      value.counter.toString(),
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    );
                                  },
                                ),
                                // ignore: prefer_const_constructors
                                IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    itempro.increment();
                                  },
                                ),
                              ]),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'About',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomRow(
                            icon: Icons.height,
                            text: 'Height',
                            text2: '8.2',
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          CustomRow(
                              icon: Icons.water_drop,
                              text: 'Humodity',
                              text2: '62 %'),
                          CustomRow(
                              icon: Icons.width_full,
                              text: 'Width',
                              text2: '3.4')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[200])),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()));
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 100),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff184a2c),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Text(
                            'buy now',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            );
          },
        )
      ]),
    );
  }
}
