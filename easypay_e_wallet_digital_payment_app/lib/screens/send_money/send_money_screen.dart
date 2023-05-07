import 'package:easypay_e_wallet_digital_payment_app/common_widgets/custom_button.dart';
import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/send_money/widgets/amount_section.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/send_money/widgets/receiver_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send Money",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppTheme.blackColor.withOpacity(0.8)),
        ),
        actions: [
          RawMaterialButton(
            onPressed: () {},
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ReceiverInfoSection(),
              )),
          Expanded(flex: 2, child: AmountSection()),
        ],
      ),
    );
  }
}
