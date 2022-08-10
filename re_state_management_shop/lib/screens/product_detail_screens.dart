import 'package:flutter/material.dart';
import 'package:re_state_management_shiop/providers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreens extends StatelessWidget {
  static const routerName = 'product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<ProductProvider>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Center(
        child: Text('Product Detail'),
      ),
    );
  }
}
