import 'package:flutter/material.dart';

import 'themes.dart';

class InputLoginSection extends StatefulWidget {
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
  State<InputLoginSection> createState() => _InputLoginSectionState();
}

class _InputLoginSectionState extends State<InputLoginSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name,
            style: fontStyles.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16),
              ),
              filled: true,
              fillColor: Colors.purple.shade100,
              prefixIcon: Icon(
                widget.icon,
                color: Colors.purple.shade400,
              ),
              hintText: widget.hint,
              hintStyle: fontStyles.copyWith(fontSize: 14),
            ),
            obscureText: widget.obsecure,
          ),
        ],
      ),
    );
  }
}
