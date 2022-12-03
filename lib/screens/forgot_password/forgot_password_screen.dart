import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/forgot_password/components/body.dart';
    class ForgotPasswordScreen extends StatelessWidget {
      static String routeName = "/forgot_password";
      const ForgotPasswordScreen({Key? key}) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Body(),
          appBar: AppBar(
            title: Text("Forgot Password"),

          ),


        );
      }
    }
    