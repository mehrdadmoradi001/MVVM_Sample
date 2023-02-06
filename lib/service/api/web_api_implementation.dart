import 'package:dio/dio.dart';
import 'package:mvvm/model/crypto.dart';
import 'package:mvvm/service/api/network_api.dart';

class WebApi implements NetworkApi {
  @override
  Future<List<Crypto>> getAllCryptos() async {
    var response = await Dio().get('https://api.coincap.io/v2/assets');

    List<Crypto> cryptoList = response.data['data']
        .map<Crypto>((jsonMapObject) => Crypto.fromMapJson(jsonMapObject))
        .toList();

    return cryptoList;

  }
}
