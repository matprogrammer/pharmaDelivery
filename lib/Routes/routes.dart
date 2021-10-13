import 'package:flutter/material.dart';
import 'package:deliveryapp/src/login/login_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': ( _ ) => const LoginPage(),
};
