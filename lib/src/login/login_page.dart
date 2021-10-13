
import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            _imageBanner(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLoggin(),
            _textDontHaveAccount(),
          ],
        ),
      )
    );
  }


  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No tinenes cuenta?',
          style: TextStyle(
            color: MyColors.primaryColor,
          )
        ),
        const SizedBox(width: 7),
        Text('Registrate',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: MyColors.primaryColor,
          )
        ),
      ],
    );
  }

  Widget _buttonLoggin() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('INGRESAR'),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        )
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Correo electronico',
          hintStyle: TextStyle(
            color: MyColors.primaryColor,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: Icon(Icons.email, color: MyColors.primaryColor),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Contraseña',
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor),
        ),
      ),
    );
  }


  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
        top: 100,
        bottom: MediaQuery.of(context).size.height * 0.22,
      ),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }




}
