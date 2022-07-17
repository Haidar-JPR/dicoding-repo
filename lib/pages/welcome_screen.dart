import 'package:flutter/material.dart';

import '../components/themes.dart';
import 'login_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 4,
                    height: 230,
                    margin: const EdgeInsets.only(left: 40),
                    color: const Color(0XFF764AF1),
                  ),
                  SizedBox(width: defaultMargin),
                  Expanded(
                    child: Text(
                      'Upgrade Your \nLife Style!',
                      style: fontStyles.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/logo2.png'),
            Text(
              'Gadget terbaru\n dengan cicilan mulai dari 0%',
              textAlign: TextAlign.center,
              style: fontStyles.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                textStyle: fontStyles.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.all(defaultMargin + 4),
                primary: const Color(0XFF764AF1),
              ),
              child: const Text('Go'),
            )
          ],
        ),
      ),
    );
  }
}
