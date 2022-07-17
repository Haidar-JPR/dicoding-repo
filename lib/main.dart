import 'package:dicoding_submission_phone/model/user_model.dart';
import 'package:flutter/material.dart';

import 'package:dicoding_submission_phone/pages/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => User(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicoding Submission App',
      theme: ThemeData(),
      home: const WelcomeScreen(),
    );
  }
}
