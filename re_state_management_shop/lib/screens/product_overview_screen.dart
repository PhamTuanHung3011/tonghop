import 'package:flutter/material.dart';
import 'package:re_state_management_shiop/widgets/product_gird.dart';

import '../providers/product.dart';
import '../widgets/product_items.dart';

class ProductOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductGird(),
    );
  }
}
