import 'package:easypay_e_wallet_digital_payment_app/common_widgets/custom_button.dart';
import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: "Login",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
        SizedBox(
          height: 10,
        ),
        CustomButton(
          text: "Sign Up",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
          textColor: AppTheme.blackColor,
          buttonColor: AppTheme.whiteColor,
        )
      ],
    );
  }
}
