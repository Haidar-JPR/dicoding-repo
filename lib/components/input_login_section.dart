import 'package:flutter/material.dart';

import 'themes.dart';

// ignore: must_be_immutable
class InputLoginSection extends StatelessWidget {
  InputLoginSection({
    Key? key,
    required this.name,
    required this.hint,
    required this.icon,
    required this.obsecure,
    required this.controller,
  }) : super(key: key);

  String name;
  final String hint;
  final IconData icon;
  final bool obsecure;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: fontStyles.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16),
              ),
              filled: true,
              fillColor: Colors.purple.shade100,
              prefixIcon: Icon(
                icon,
                color: Colors.purple.shade400,
              ),
              hintText: hint,
              hintStyle: fontStyles.copyWith(fontSize: 14),
            ),
            obscureText: obsecure,
          ),
        ],
      ),
    );
  }
}
