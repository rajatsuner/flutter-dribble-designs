import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? buttonColor;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textColor,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
              color: buttonColor ?? AppTheme.blackColor,
              border: Border.all(width: 2, color: AppTheme.blackColor),
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            text,
            style: TextStyle(
                color: textColor ?? AppTheme.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
