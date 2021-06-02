
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fund_app/model/mutualfund_viewmodel.dart';
import 'package:fund_app/redux/state/app_state.dart';

class MutualFundDetail extends StatelessWidget {

  MutualFundDetail({required this.viewModel});
  MutualFundViewModel viewModel;

  init() {
    print(viewModel.payload_2);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MutualFundViewModel>(
      onInit: init() ,
        converter: (store) => MutualFundViewModel.fromStore(store),
        builder: (BuildContext context, MutualFundViewModel viewModel) {
          return Scaffold(
            appBar: AppBar(
              title: Text('finId: ${viewModel.payload_2}'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(height: 10,),
                  Text('finId: ${viewModel.payload_2} '),
                  Container(height: 10 ),
                ],
              ),
            ),
          );
        });
  }
}
