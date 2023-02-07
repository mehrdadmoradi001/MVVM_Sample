import 'package:flutter/cupertino.dart';
import 'package:mvvm/model/crypto.dart';
import 'package:mvvm/service/api/web_api_implementation.dart';

class CoinListViewModel extends ChangeNotifier{
  final _webApi = WebApi();

  List<Crypto> cryptoList = [];

  void loadData() async{
    cryptoList = await _webApi.getAllCryptos();
    notifyListeners();
  }

}