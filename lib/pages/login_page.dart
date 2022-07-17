import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/input_login_section.dart';
import '../components/themes.dart';
import '../model/user_model.dart';
import 'main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerUsername = TextEditingController();
    var controllerPassword = TextEditingController();

    return Scaffold(
      backgroundColor: mainColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Text(
                'Login',
                style: fontStyles.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Sign In To Continue',
                style: fontStyles.copyWith(
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 50),

              /// User input
              InputLoginSection(
                controller: controllerUsername,
                name: 'Username',
                hint: 'Your Name',
                icon: Icons.email,
                obsecure: false,
              ),
              InputLoginSection(
                controller: controllerPassword,
                name: 'Password',
                hint: 'Password',
                icon: Icons.lock_outline,
                obsecure: true,
              ),
              const SizedBox(height: 30),

              /// Login Button
              ElevatedButton(
                onPressed: () {
                  Provider.of<User>(context, listen: false).signIn(
                    controllerUsername.text.toString(),
                    controllerPassword.text.toString(),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(
                        name: controllerUsername.text,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: fontStyles.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              /// Footer
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: fontStyles.copyWith(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: fontStyles.copyWith(
                        fontSize: 12,
                        color: Colors.purple.shade900,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
