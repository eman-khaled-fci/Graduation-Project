import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/socal_card.dart';
class RowOfSocalCards extends StatelessWidget {
  const RowOfSocalCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SocalCard(icon: "assets/icons/google-icon.svg",press: (){},),
    SocalCard(icon: "assets/icons/facebook-2.svg",press: (){},),
    SocalCard(icon: "assets/icons/twitter.svg",press: (){},),
],
);
  }
}
