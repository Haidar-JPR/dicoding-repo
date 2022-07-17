import 'package:flutter/material.dart';

import 'themes.dart';

class FilterSection extends StatefulWidget {
  const FilterSection({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  State<FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 10,
          top: 6,
          bottom: 6,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isClicked ? const Color(0XFF3330E4) : Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            widget.name,
            style: fontStyles.copyWith(
              fontWeight: FontWeight.w400,
              color: isClicked ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
