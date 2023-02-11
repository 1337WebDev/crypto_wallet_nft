import 'package:crypto_wallet_nft/pages/base.dart';
import 'package:crypto_wallet_nft/providers/calculprovider.dart';
import 'package:crypto_wallet_nft/providers/nftprovider.dart';
import 'package:crypto_wallet_nft/providers/pageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet NFT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PageProvider()),
          ChangeNotifierProvider(create: (_) => CalculProvider()),
          ChangeNotifierProvider(create: (_) => NFTProvider()),
        ],
        child: const BaseScreen(),
      ),
    );
  }
}
