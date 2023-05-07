import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Samantha",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Your available balance",
                style: TextStyle(
                    color: AppTheme.darkGreyColor, fontWeight: FontWeight.w600),
              )
            ],
          ),
          Text(
            "₹4,590.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
    );
  }
}
