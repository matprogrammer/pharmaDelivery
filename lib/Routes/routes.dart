import 'package:deliveryapp/src/login/login_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': ( _ ) => const LoginPage(),
};
