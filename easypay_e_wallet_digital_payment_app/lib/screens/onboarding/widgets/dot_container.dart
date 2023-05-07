import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DotContainers extends StatelessWidget {
  const DotContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: AppTheme.lightGreyColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppTheme.blackColor, width: 3)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: AppTheme.lightGreyColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: AppTheme.lightGreyColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(5),
          ),
        )
      ],
    );
  }
}
