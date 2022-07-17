import 'package:dicoding_submission_phone/model/products_model.dart';
import 'package:flutter/material.dart';

import 'item_section.dart';
import 'themes.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 300,
      margin: EdgeInsets.only(
        top: defaultMargin,
        bottom: defaultMargin,
        left: defaultMargin,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final Product product = products[index];
          return ItemSection(
            name: product.name,
            category: product.category,
            price: product.price,
            url: product.url,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
      ),
    );
  }
}
