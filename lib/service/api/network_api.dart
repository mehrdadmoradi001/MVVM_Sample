import 'package:mvvm/model/crypto.dart';

abstract class NetworkApi {
  Future<List<Crypto>> getAllCryptos();
}