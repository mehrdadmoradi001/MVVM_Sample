import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm/model/crypto.dart';
import 'package:mvvm/service/api/network_api.dart';
import 'package:mvvm/service/api/web_api_fake.dart';
import 'package:mvvm/service/api/web_api_implementation.dart';

class CoinListViewModel extends ChangeNotifier{
  final NetworkApi _webApi = GetIt.I.get<NetworkApi>();

  List<Crypto> cryptoList = [];

  void loadData() async{
    cryptoList = await _webApi.getAllCryptos();
    notifyListeners();
  }

}