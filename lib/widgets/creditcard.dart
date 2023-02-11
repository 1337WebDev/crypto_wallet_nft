import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:crypto_wallet_nft/utils/const.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AspectRatio(
        aspectRatio: 2 / 1.1,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppConstants.colors.grayColor.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 25,
              ),
            ],
            border: Border.all(
              color: AppConstants.colors.white.withOpacity(0.1),
              width: 2,
            ),
            gradient: AppConstants.colors.glassGradient,
          ),
          padding: const EdgeInsets.all(20),
          child: const CardContent(),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wallet Balance",
              style: AppConstants.fonts.heading,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$8,412.65",
                  style: AppConstants.fonts.largeHeading,
                ),
                const SizedBox(height: 5),
                Text(
                  "1.2 BTC",
                  style: AppConstants.fonts.smallHeading.copyWith(
                    color: AppConstants.colors.white.withOpacity(0.25),
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MasterCardLogo(),
            const SizedBox(height: 10),
            Text(
              "**** **** **** 1234",
              style: AppConstants.fonts.body,
            ),
          ],
        )
      ],
    );
  }
}

class MasterCardLogo extends StatelessWidget {
  const MasterCardLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 40,
      child: Stack(
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: AppConstants.colors.redColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: AppConstants.colors.yellowColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: AppConstants.colors.redColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
