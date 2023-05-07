import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  ListTile _recentTranscationItem() {
    return ListTile(
      tileColor: AppTheme.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      leading: Image.asset(
        "assets/images/hat.png",
        scale: 0.8,
      ),
      title: const Text(
        "Raj K.",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: const Text("February 24,2023"),
      trailing: const Text(
        "₹400.00",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recent Transactions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Text(
                "See all",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 5,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return _recentTranscationItem();
            },
          )
        ],
      ),
    );
  }
}
