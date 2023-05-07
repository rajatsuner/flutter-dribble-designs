import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DealBannerSection extends StatelessWidget {
  const DealBannerSection({super.key});

  _bannerItem(BuildContext context, Color bannerColor) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: bannerColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "50% OFF",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const Text(
                  "Summer Special Deal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  "Get discount for every transaction",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/images/girl_shopping.png",
              height: 120,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 130,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          _bannerItem(
            context,
            Color(0xffFCB3C5),
          ),
          _bannerItem(
            context,
            Color(0xffD6E1FF),
          ),
          _bannerItem(
            context,
            Color(0xffFFF2CF),
          ),
        ],
      ),
    );
  }
}
