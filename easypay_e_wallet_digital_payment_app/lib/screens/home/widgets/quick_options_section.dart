import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuickOptionSection extends StatelessWidget {
  const QuickOptionSection({super.key});

  _quickItem(String text, String image) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Image.asset(
            image,
            width: 25,
            height: 25,
          ),
          Text(
            text,
            style: TextStyle(
                color: AppTheme.blackColor.withOpacity(0.6),
                fontWeight: FontWeight.bold,
                fontSize: 12),
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
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      decoration: BoxDecoration(
          color: AppTheme.whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _quickItem(
                "Internet",
                "assets/images/internet.png",
              ),
              _quickItem(
                "Water",
                "assets/images/water.png",
              ),
              _quickItem(
                "Electricity",
                "assets/images/electricity.png",
              ),
              _quickItem(
                "TV Cable",
                "assets/images/tv_cable.png",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _quickItem(
                "Vehicle",
                "assets/images/vehicle.png",
              ),
              _quickItem(
                "Rent Bill",
                "assets/images/house.png",
              ),
              _quickItem(
                "Invest",
                "assets/images/invest.png",
              ),
              _quickItem(
                "More",
                "assets/images/more.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
