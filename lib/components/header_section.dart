import 'package:dicoding_submission_phone/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'themes.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Selamat datang \n${name!.toLowerCase()}',
            style: fontStyles.copyWith(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: const Color(0XFFA760FF).withOpacity(0.7),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const ProfilePage()));
            },
            child: const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/3/39/GodfreyKneller-IsaacNewton-1689.jpg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
