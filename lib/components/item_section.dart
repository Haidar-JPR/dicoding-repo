import 'package:flutter/material.dart';

import 'themes.dart';

// ignore: must_be_immutable
class ItemSection extends StatefulWidget {
  ItemSection({
    required this.name,
    required this.url,
    required this.category,
    required this.price,
    Key? key,
  }) : super(key: key);

  String name;
  String category;
  String price;
  String url;

  @override
  State<ItemSection> createState() => _ItemSectionState();
}

class _ItemSectionState extends State<ItemSection> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: const Color(0XFF5463FF).withOpacity(0.6),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Expanded(
                child: Image.asset(
                  widget.url,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: defaultMargin),
                child: Text(
                  widget.category,
                  style: fontStyles.copyWith(
                    fontSize: 12,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.only(left: defaultMargin),
                child: Text(
                  widget.name,
                  style: fontStyles.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.only(left: defaultMargin),
                child: Text(
                  widget.price,
                  style: fontStyles.copyWith(
                    fontSize: 13,
                    color: const Color(0XFFFBB454),
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 125),
          child: IconButton(
            onPressed: () {
              setState(() {
                fav = !fav;
              });
            },
            icon: Icon(
              size: 30,
              Icons.favorite,
              color: fav ? Colors.red : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
