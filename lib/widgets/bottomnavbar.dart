import 'package:crypto_wallet_nft/providers/pageprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_nft/utils/const.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      height: 60,
      width: MediaQuery.of(context).size.width - 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppConstants.colors.darkColor.withOpacity(0.8),
            spreadRadius: 20,
            blurRadius: 40,
            offset: const Offset(0, 40),
          ),
        ],
        color: AppConstants.colors.darkColor,
      ),
      child: Consumer<PageProvider>(
        builder: (context, pageProvider, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  pageProvider.page.animateToPage(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  Icons.bar_chart_rounded,
                  color: AppConstants.colors.white
                      .withOpacity(pageProvider.currentPage == 0 ? 1 : .2),
                ),
              ),
              IconButton(
                onPressed: () {
                  pageProvider.page.animateToPage(1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  Icons.explore_outlined,
                  color: AppConstants.colors.white
                      .withOpacity(pageProvider.currentPage == 1 ? 1 : .2),
                ),
              ),
              IconButton(
                onPressed: () {
                  pageProvider.page.animateToPage(2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: AppConstants.colors.white
                      .withOpacity(pageProvider.currentPage == 2 ? 1 : .2),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
