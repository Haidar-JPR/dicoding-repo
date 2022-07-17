import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  String email = '';
  String password = '';

  signIn(String emailU, String passU) {
    email = emailU;
    password = passU;
    notifyListeners();
  }
}
