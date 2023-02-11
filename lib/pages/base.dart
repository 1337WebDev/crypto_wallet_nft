import 'package:crypto_wallet_nft/pages/calculator.dart';
import 'package:crypto_wallet_nft/pages/explorepage.dart';
import 'package:crypto_wallet_nft/pages/homepage.dart';
import 'package:crypto_wallet_nft/providers/pageprovider.dart';
import 'package:crypto_wallet_nft/utils/const.dart';
import 'package:crypto_wallet_nft/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.colors.darkColor,
      appBar: AppBar(
        backgroundColor: AppConstants.colors.darkColor,
        title: Text(
          "Crypto Wallet NFT",
          style: AppConstants.fonts.heading,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Consumer<PageProvider>(
            builder: (context, pageProvider, child) {
              return PageView(
                physics: const BouncingScrollPhysics(),
                controller: pageProvider.page,
                onPageChanged: (currentPage) =>
                    {pageProvider.setPage(currentPage)},
                children: const [
                  HomePage(),
                  ExplorePage(),
                  CalculatorPage(),
                ],
              );
            },
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}
