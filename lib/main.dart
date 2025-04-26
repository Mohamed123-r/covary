import 'package:covert_dashbord/views/auth/login_view.dart';
import 'package:flutter/material.dart';

import 'views/home/home_view.dart';

void main() {
  runApp(const CoveryApp());
}

class CoveryApp extends StatelessWidget {
  const CoveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covery',
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}

