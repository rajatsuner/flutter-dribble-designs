import 'package:easypay_e_wallet_digital_payment_app/common_widgets/custom_button.dart';
import 'package:easypay_e_wallet_digital_payment_app/core/themes/app_themes.dart';
import 'package:easypay_e_wallet_digital_payment_app/screens/transaction_receipt/transaction_receipt_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AmountSection extends StatelessWidget {
  const AmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(color: AppTheme.whiteColor),
      child: Column(
        children: [
          Text(
            "₹130.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: AppTheme.lightGreyColor,
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          width: 1,
                          height: double.infinity,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Text(
                        "2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          width: 1,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Text(
                        "3",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 1, color: AppTheme.lightGreyColor.withOpacity(0.3)),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          width: 1,
                          height: double.infinity,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Text(
                        "5",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          width: 1,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Text(
                        "4",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 1, color: AppTheme.lightGreyColor.withOpacity(0.3)),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "7",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          width: 1,
                          height: double.infinity,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Text(
                        "8",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          width: 1,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Text(
                        "9",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 1, color: AppTheme.lightGreyColor.withOpacity(0.3)),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          ".",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 1,
                          height: double.infinity,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "0",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 1,
                          color: AppTheme.lightGreyColor.withOpacity(0.3)),
                      Expanded(flex: 1, child: Icon(Icons.backspace_outlined))
                    ],
                  ),
                ),
              ],
            ),
          )),
          CustomButton(
              text: "Send",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TransactionReceiptScreen();
                }));
              })
        ],
      ),
    );
  }
}
