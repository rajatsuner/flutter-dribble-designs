import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/onboarding/onboarding_screen.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/send_money/send_money_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WalletActionsSection extends StatelessWidget {
  const WalletActionsSection({super.key});

  Widget _wallentButton(String text, String image,
      {required VoidCallback onPressed}) {
    return InkWell(
      onTap: () => onPressed(),
      child: Column(
        children: [
          Image.asset(
            image,
            scale: 0.8,
          ),
          const SizedBox(
            height: 7.5,
          ),
          Text(
            text,
            style: TextStyle(
                color: AppTheme.whiteColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
          color: AppTheme.blackColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _wallentButton(
            "Top Up",
            "assets/images/top_up.png",
            onPressed: () {},
          ),
          _wallentButton(
            "Send",
            "assets/images/send.png",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SendMoneyScreen();
              }));
            },
          ),
          _wallentButton(
            "Withdraw",
            "assets/images/withdraw.png",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
