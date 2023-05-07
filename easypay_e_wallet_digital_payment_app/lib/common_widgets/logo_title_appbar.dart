import 'package:flutter/material.dart';

class LogoTitleAppBar extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const LogoTitleAppBar({super.key, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Image.asset("assets/images/logo.png"),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "EasyPay",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
