import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/login_success/login_success_screen.dart';


import '../../../components/custom_suffix_icon.dart';
import '../../../components/defaulr_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../forgot_password/forgot_password_screen.dart';


class SignForm extends StatefulWidget {
  const SignForm({Key? key,




  }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];

  // void addError({String? error}) {
  //   if (!errors.contains(error))
  //     setState(() {
  //       errors.add(error!);
  //     });
  // }
  //
  // void removeError({String? error}) {
  //   if (errors.contains(error))
  //     setState(() {
  //       errors.remove(error);
  //     });
  // }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            children: [
              buildEmailFormField(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              buildPasswordFormField(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Row(
                children: [
                  Checkbox(value: remember,activeColor: kPrimaryColor, onChanged: (value){
                    setState(() {

                      remember=value!;
                    });
                  }),Text("Remember me")
                  ,Spacer()
                  ,
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context,ForgotPasswordScreen.routeName),

                      child: Text("Forgot Psssword",style: TextStyle(decoration: TextDecoration.underline))),
                ],
              ),
              FormError(errors: errors),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),

              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    //if all is valid then go to success scereen
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                },
              )
            ]
        ));
  }

  // TextFormField buildEmailFormField() {
  //   return TextFormField(
  //     keyboardType: TextInputType.emailAddress,
  //     onSaved: (newValue) => email = newValue!,
  //     onChanged: (value) {
  //       if (value.isNotEmpty && errors.contains(kEmailNullError)) {
  //         setState(() {
  //           errors.remove(kEmailNullError);
  //         });
  //       } else if (emailValidatorRegExp.hasMatch(value) &&
  //           errors.contains(kInvalidEmailError)) {
  //         setState(() {
  //           errors.remove(kInvalidEmailError);
  //         });
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty && !errors.contains(kEmailNullError)) {
  //         setState(() {
  //           errors.add(kEmailNullError);
  //         });
  //       } else if (!emailValidatorRegExp.hasMatch(value) &&
  //           !errors.contains(kInvalidEmailError)) {
  //         setState(() {
  //           errors.add(kInvalidEmailError);
  //         });
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Email",
  //       hintText: "Enter Your email",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
  //     ),
  //   );
  // }
  //
  // TextFormField buildPasswordFormField() {
  //   return TextFormField(
  //     obscureText: true,
  //     onSaved: (newValue) => password = newValue!,
  //     onChanged: (value) {
  //       if (value.isNotEmpty && errors.contains(kPassNullError)) {
  //         setState(() {
  //           errors.remove(kPassNullError);
  //         });
  //       } else if (value.length >= 8 && errors.contains(kShortPassError)) {
  //         setState(() {
  //           errors.remove(kShortPassError);
  //         });
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty && !errors.contains(kPassNullError)) {
  //         setState(() {
  //           errors.add(kPassNullError);
  //         });
  //       } else if (value.length < 8 && !errors.contains(kShortPassError)) {
  //         setState(() {
  //           errors.add(kShortPassError);
  //         });
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Password",
  //       hintText: "Enter Your Password",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
  //     ),
  //   );
  // }
  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });

  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }


  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

}
