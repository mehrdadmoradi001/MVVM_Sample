import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm/view_model/coinlist_viewmodel.dart';
import 'package:provider/provider.dart';

class CoinListScreen extends StatefulWidget {
  const CoinListScreen({Key? key}) : super(key: key);

  @override
  State<CoinListScreen> createState() => _CoinListScreenState();
}

class _CoinListScreenState extends State<CoinListScreen> {
  final _viewModel = GetIt.I.get<CoinListViewModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<CoinListViewModel>(
        builder: ((context, viewModel, child) => _getUi(viewModel)),
      ),
    );
  }

  Widget _getUi(CoinListViewModel viewModel) {
    return Scaffold(
      body: ListView.builder(
        itemCount: viewModel.cryptoList.length ?? 0,
        itemBuilder: (context, index) {
          return Text(viewModel.cryptoList[index].name ?? '');
        },
      ),
    );
  }
}
