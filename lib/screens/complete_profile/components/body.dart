import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/defaulr_button.dart';
import 'package:my_flutter_app/components/form_error.dart';
import 'package:my_flutter_app/screens/complete_profile/components/complete_profile_form.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Complete Profile",
              style:headingStyle
              ,)
            ,
            Text("Complete your details or continue  \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight*0.04,),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(20),),
            Text("By continuing your confirm that you agree \nwith our Term and Contition "
              ,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
