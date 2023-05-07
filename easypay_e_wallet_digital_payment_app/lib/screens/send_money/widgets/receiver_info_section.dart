import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ReceiverInfoSection extends StatelessWidget {
  const ReceiverInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                    color: AppTheme.lightGreyColor.withOpacity(0.5), width: 2),
                image: const DecorationImage(
                    image: AssetImage("assets/images/girl.png")),
                shape: BoxShape.circle,
                color: AppTheme.whiteColor)),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Nayantara V",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "+91 805030XXXX",
          style: TextStyle(fontSize: 16, color: AppTheme.darkGreyColor),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
