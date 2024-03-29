import 'package:flutter/material.dart';
import 'package:fund_app/model/mutualfund_viewmodel.dart';
import 'package:fund_app/screens/mutualfund/mutialfund_screen.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({required this.store});
  final store;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions(store) => <Widget>[
    MutualFund(viewModel: MutualFundViewModel.fromStore(store)),
    Container(child: Center(child: Text("My Portfolio"))),
    Container(child: Center(child: Text("Analytics"))),
    Container(child: Center(child: Text("More"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions(widget.store).elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Mutual Fund',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'My Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.blueGrey[205],
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
