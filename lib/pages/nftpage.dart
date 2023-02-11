import 'package:crypto_wallet_nft/models/ntfmodel.dart';
import 'package:crypto_wallet_nft/utils/const.dart';
import 'package:flutter/material.dart';

class NFTPage extends StatelessWidget {
  final NFTModel nftModel;
  const NFTPage({super.key, required this.nftModel});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: nftModel.id,
      child: Scaffold(
        backgroundColor: AppConstants.colors.darkColor,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.75,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  nftModel.image,
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: AppConstants.colors.darkColor,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nftModel.name,
                      style: AppConstants.fonts.heading,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "\$${nftModel.price}",
                      style: AppConstants.fonts.largeHeading,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      nftModel.description,
                      style: AppConstants.fonts.body,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
