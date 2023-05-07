import 'package:easypay_e_wallet_digital_payment_app/common_widgets/custom_button.dart';
import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransactionReceiptScreen extends StatelessWidget {
  const TransactionReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transaction Receipt",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppTheme.blackColor.withOpacity(0.8)),
        ),
      ),
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: AppTheme.whiteColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset("assets/images/man_walk.png"),
                Text(
                  "Transfer Success",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Your money has been successfully sent to Nayantara V",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppTheme.lightGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Total Transfer",
                  style: TextStyle(
                    color: AppTheme.darkGreyColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$132.00",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 2,
                  color: AppTheme.lightGreyColor.withOpacity(0.5),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recepient",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: AppTheme.lightGreyColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppTheme.skinColor),
                  child: ListTile(
                    leading: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppTheme.lightGreyColor.withOpacity(0.5)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/girl.png"))),
                    ),
                    title: Text(
                      "Nayantara V",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "805030XXXX",
                      style: TextStyle(color: AppTheme.lightGreyColor),
                    ),
                    trailing: Text(
                      "3:30pm",
                      style: TextStyle(color: AppTheme.lightGreyColor),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                CustomButton(text: "Done", onPressed: () {}),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Transfer more  money",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.darkGreyColor,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
