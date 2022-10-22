import 'package:flutter/material.dart';
import 'package:plantapp/Screens/ItemDetailScreen/ItemDetailScreen.dart';
import 'package:provider/provider.dart';

import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/ItemDetailScreen/ItemDetailScreenViewModel.dart';
import 'Screens/LoginScreen/LoginScreen.dart';
import 'Screens/Register Screen/RegisterScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ItemProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.blue,
          ),
          home: const ItemDetailScreen(),
        ));
  }
}
