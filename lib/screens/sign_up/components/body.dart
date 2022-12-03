import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/defaulr_button.dart';
import 'package:my_flutter_app/components/form_error.dart';
import 'package:my_flutter_app/components/row_of_socal_card.dart';
import 'package:my_flutter_app/constants.dart';
import 'package:my_flutter_app/screens/sign_up/components/sign_up_form.dart';
import 'package:my_flutter_app/size_config.dart';

import '../../../components/custom_suffix_icon.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(

            children: [
             // SizedBox(height: SizeConfig.screenHeight*0.01,),
              Text("Register Account",
                style:headingStyle
                ,)
              ,
              Text("Complete your details or continue  \nwith social media",
              textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.06,),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.06,),
              RowOfSocalCards(),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text("By continuing your confirm that you agree \nwith our Term and Contition "
              ,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

