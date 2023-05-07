import 'package:easypay_e_wallet_digital_payment_app/common_widgets/logo_title_appbar.dart';
import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/home/widgets/deal_banner_section.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/home/widgets/quick_options_section.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/home/widgets/recent_transaction_section.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/home/widgets/wallent_actions_section.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/home/widgets/welcome_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const LogoTitleAppBar(
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: const [
          WelcomeSection(),
          WalletActionsSection(),
          QuickOptionSection(),
          DealBannerSection(),
          RecentTransactionSection()
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            color: AppTheme.whiteColor,
            border: Border(
                top: BorderSide(
                    width: 2,
                    color: AppTheme.lightGreyColor.withOpacity(0.2)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/home.png",
                  height: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppTheme.blackColor),
                )
              ],
            ),
            Image.asset(
              "assets/images/invoice.png",
              height: 22,
            ),
            Container(
                height: 45,
                width: 45,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppTheme.blackColor, shape: BoxShape.circle),
                child: Image.asset("assets/images/qr_code.png")),
            Image.asset(
              "assets/images/notification.png",
              height: 22,
            ),
            Image.asset(
              "assets/images/account.png",
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
