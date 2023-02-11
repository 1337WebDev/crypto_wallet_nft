import 'dart:convert';
import 'dart:developer';

import 'package:crypto_wallet_nft/models/ntfmodel.dart';
import 'package:crypto_wallet_nft/providers/nftprovider.dart';

import 'package:http/http.dart' as http;

import '../utils/const.dart';

Future<List<NFTModel>> getNFTs() async {
  const url = AppConstants.apiURL;
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    try {
      final List<NFTModel> nfts = NFTModel.fromJsonList(json.decode(response.body)["data"]);
      NFTProvider.setNFT(nfts);
      return nfts;
    } catch (e) {
      log("Error in getNFTs: $e");
      return [];
    }
  }
  return [];
}
