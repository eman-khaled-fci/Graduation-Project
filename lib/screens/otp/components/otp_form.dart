import 'package:flutter/material.dart';

import '../../../components/defaulr_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {

  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode=FocusNode();
    pin3FocusNode=FocusNode();
    pin4FocusNode=FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pin2FocusNode?.dispose();
    pin3FocusNode?.dispose();
    pin4FocusNode?.dispose();
    super.dispose();
  }

  void nextField (String value , FocusNode focusNode){
    if(value.length==1){
      focusNode.requestFocus();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(

      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  style: TextStyle(
                      fontSize: 24),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    // also you need to store your value
                    nextField(value,pin2FocusNode!);

                  },

                ),
              ),
              SizedBox(

                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  style: TextStyle(
                      fontSize: 24),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value,pin3FocusNode!);

                  },

                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  style: TextStyle(
                      fontSize: 24),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value,pin4FocusNode!);

                  },

                ),
              ),
              SizedBox (
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  style: TextStyle(
                      fontSize: 24),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    pin4FocusNode?.unfocus();

                  },

                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight*0.15,),
          DefaultButton(text: "Continue",press:(){}),

        ],
      ),
    );
  }


}


