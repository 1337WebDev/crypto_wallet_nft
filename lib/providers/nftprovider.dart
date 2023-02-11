import 'package:crypto_wallet_nft/models/ntfmodel.dart';
import 'package:flutter/material.dart';

class NFTProvider extends ChangeNotifier {
  static List<NFTModel> _nft = [];

  static List<NFTModel> get nft => _nft;
  static void setNFT(List<NFTModel> nft) {
    _nft = nft;
  }
}
