import 'package:flutter/material.dart';
import 'package:plantapp/Core/Model/Img_Nme_pirce_model.dart';
import 'package:plantapp/Screens/Custom%20Widget/CustomContainer.dart';
import 'package:plantapp/Screens/Custom%20Widget/CustomTextField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(),
                    Icon(Icons.shopping_cart),
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Let\'s Find Your",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Plants!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CustomTextfield(
                  hinttxt: 'Search here',
                  obsecure: false,
                  icon: const Icon(Icons.search),
                  surfixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset('Assets/Icon/voice12.png')),
                ),
                const SizedBox(
                  height: 10,
                ),
                TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 210, 231, 223)),
                    splashBorderRadius: BorderRadius.circular(40),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    tabs: const [
                      Text('Recomend'),
                      Text('Top'),
                      Text('indoore'),
                      Text('OutDoor')
                    ]),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DataModal.imgpath.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CustomContainer(
                          name: DataModal.name[index],
                          path: DataModal.imgpath[index],
                          price: DataModal.price[index],
                          type: DataModal.type[index],
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  'Recent Viewed',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 10),
                  child: SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      'Assets/Images/flowerpot (6).png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Coleps',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text('this is flowerpot')
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      'Assets/Images/flowerpot (6).png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Coleps',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text('this is flowerpot')
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      'Assets/Images/flowerpot (6).png')),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Coleps',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text('this is flowerpot')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              // fixedColor: Colors.black,
              selectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Person',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Shopping',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag), label: 'Shopping bag'),
              ])),
    );
  }
}
