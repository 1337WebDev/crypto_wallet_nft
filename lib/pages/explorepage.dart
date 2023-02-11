import 'package:crypto_wallet_nft/pages/nftpage.dart';
import 'package:crypto_wallet_nft/providers/nftprovider.dart';
import 'package:crypto_wallet_nft/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NFTProvider.nft.isEmpty
        ? Container()
        : GridView.custom(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                const QuiltedGridTile(2, 2),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 2),
              ],
            ),
            physics: const BouncingScrollPhysics(),
            childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NFTPage(
                          nftModel:
                              NFTProvider.nft[index % NFTProvider.nft.length],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          NFTProvider.nft[index % NFTProvider.nft.length].image,
                        ),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) => Container(
                          color: AppConstants.colors.primarycolor,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: 100,
            ),
          );
  }
}
