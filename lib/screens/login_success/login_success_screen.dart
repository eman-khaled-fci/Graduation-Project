import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName="/login-success";
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success"),
        leading: SizedBox(),
      ),
body: Body(),




    );
  }
}
