import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/82/84/2a/82842ad731f675ebaed8f4a1ae4f0361.jpg',
                ),
                radius: 100,
              ),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
