import 'package:easypay_e_wallet_digital_payment_app/common_widgets/custom_button.dart';
import 'package:easypay_e_wallet_digital_payment_app/common_widgets/logo_title_appbar.dart';
import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/onboarding/widgets/auth_buttons.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/onboarding/widgets/dot_container.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/onboarding/widgets/headlines_section.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const LogoTitleAppBar(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      body: Column(
        children: [
          //Section 1
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/onboard_image.png",
                fit: BoxFit.fitWidth,
              )),

          //Section 2
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: AppTheme.whiteColor,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DotContainers(),
                    HeadlinesSection(),
                    AuthButtons()
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
