import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/defaulr_button.dart';
import 'package:my_flutter_app/components/row_of_socal_card.dart';
import 'package:my_flutter_app/constants.dart';
import 'package:my_flutter_app/screens/sign_in/components/sign_form.dart';
import 'package:my_flutter_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../components/socal_card.dart';
import '../../forgot_password/forgot_password_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(

              children: [
            SizedBox(height: SizeConfig.screenHeight*0.04,),

                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(icon: "assets/icons/google-icon.svg",press: (){},),
                //     SocalCard(icon: "assets/icons/facebook-2.svg",press: (){},),
                //     SocalCard(icon: "assets/icons/twitter.svg",press: (){},),
                //   ],
                // )

                RowOfSocalCards()


                ,
                SizedBox(height: getProportionateScreenHeight(20),)
                ,
                NoAccountText(),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
