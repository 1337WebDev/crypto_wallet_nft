import 'package:crypto_wallet_nft/controllers/nftfromapi.dart';
import 'package:crypto_wallet_nft/utils/const.dart';
import 'package:crypto_wallet_nft/widgets/creditcard.dart';
import 'package:crypto_wallet_nft/widgets/nftcard.dart';
import 'package:flutter/material.dart';

import 'nftpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CreditCard(),
          const SizedBox(height: 20),
          Text(
            "NFTs",
            style: AppConstants.fonts.heading,
          ),
          const SizedBox(height: 20),
          FutureBuilder(
            future: getNFTs(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      "Error: ${snapshot.error}",
                      style: AppConstants.fonts.body,
                    ),
                  );
                }
                if (snapshot.hasData) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NFTPage(
                              nftModel: snapshot.data![index],
                            ),
                          ),
                        ),
                      },
                      child: Hero(
                        tag: snapshot.data![index].id,
                        child: NFTCard(
                          nftModel: snapshot.data![index],
                        ),
                      ),
                    ),
                  );
                }
              }

              return Container();
            },
          )
        ],
      ),
    );
  }
}
