import 'package:flutter/material.dart';

import '../components/category_section.dart';
import '../components/discount_section.dart';
import '../components/header_section.dart';
import '../components/products_section.dart';
import '../components/themes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required this.name}) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: ListView(
        children: [
          HeaderSection(name: name),
          const SizedBox(height: 16),
          const DiscountSection(),
          const SizedBox(height: 6),
          const CategorySection(),
          const ProductsSection()
        ],
      ),
    );
  }
}
