import 'package:flutter/material.dart';
import 'package:state_management_shop/screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProductOverviewScreen(),
    );
  }
}
