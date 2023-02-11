import 'package:crypto_wallet_nft/models/ntfmodel.dart';
import 'package:flutter/material.dart';

import '../utils/const.dart';

class NFTCard extends StatelessWidget {
  final NFTModel nftModel;
  const NFTCard({required this.nftModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            nftModel.image,
          ),
          fit: BoxFit.cover,
          onError: (exception, stackTrace) => Container(
            color: AppConstants.colors.primarycolor,
            height: 100,
            width: 100,
          ),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(
          color: AppConstants.colors.white.withOpacity(0.1),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: AppConstants.colors.white.withOpacity(.75),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Price",
                  style: AppConstants.fonts.smallHeading.copyWith(
                    color: AppConstants.colors.darkColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.currency_bitcoin,
                      color: AppConstants.colors.darkColor,
                      size: 14,
                    ),
                    Text(
                      nftModel.price.toString(),
                      style: AppConstants.fonts.smallHeading.copyWith(
                        color: AppConstants.colors.darkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
