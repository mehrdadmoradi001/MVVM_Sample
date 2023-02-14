import 'package:get_it/get_it.dart';
import 'package:mvvm/service/api/network_api.dart';
import 'package:mvvm/service/api/web_api_fake.dart';
import 'package:mvvm/view_model/coinlist_viewmodel.dart';

void initServiceLocator(){
  GetIt.I.registerSingleton<NetworkApi>(WebApiFake());
  GetIt.I.registerFactory<CoinListViewModel>(() => CoinListViewModel());
}