import 'package:flutter/material.dart';

import 'filter_section.dart';
import 'themes.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: defaultMargin),
      // color: Colors.amber,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FilterSection(name: 'All'),
          FilterSection(name: 'Trending'),
          FilterSection(name: 'New Arrival'),
          FilterSection(name: 'Popular'),
          FilterSection(name: 'Top Selling'),
          FilterSection(name: 'Brand of the weeks'),
        ],
      ),
    );
  }
}
