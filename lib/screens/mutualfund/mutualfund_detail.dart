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
        onInit: init(),
        converter: (store) => MutualFundViewModel.fromStore(store),
        builder: (BuildContext context, MutualFundViewModel viewModel) {
          return Scaffold(
              appBar: AppBar(
                title: Text('finId: ${viewModel.payload_2}'),
              ),
              body: Container(
                color: Colors.lightBlueAccent[100],
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 10),
                    topShow(),
                    Container(height: 30),
                    graph()
                  ],
                ),
              ));
        });
  }

  Widget topShow() => Container(
          child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("TNEXTGEN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Container(height: 5),
              Container(
                width: 150,
                child: Text('กองทุนเปิด ทิสโก้ Next Generation Internet',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
              ),
              Container(height: 5),
              Text("NAV (31 May 2021)",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.blueGrey[800])),
              Container(height: 5),
              Text("11.6680 (-0.01%)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red)),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Risk: 6 - กองทุนรวมตราสารทุน",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
              Container(height: 5),
              Text("Technology Equity (หุ้นกลุ่มเทคโนโลยี)",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
              Container(height: 5),
              Text("Dividend: ไม่จ่าย",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
              Container(height: 10),
              Text("Total Fund Value:",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.blueGrey[800])),
              Container(height: 5),
              Text("3,820,669,295.81",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueGrey[800])),
            ],
          ),
        ],
      ));

  Widget graph() => Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/images/graph2.gif",
          )
        ],
      ));
}
