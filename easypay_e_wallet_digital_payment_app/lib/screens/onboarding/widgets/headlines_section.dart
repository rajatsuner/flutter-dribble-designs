import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeadlinesSection extends StatelessWidget {
  const HeadlinesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            "Easy Online Payment",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, wordSpacing: 2.5),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            "Make your payment experience more better today. No additional admin fee",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: AppTheme.darkGreyColor,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
