import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'Routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      initialRoute: 'login',
      routes: appRoutes,
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
      ),
    );
  }
}
