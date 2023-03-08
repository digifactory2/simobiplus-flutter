import 'package:flutter/material.dart';
import 'package:simobiplus/dashboard/dashboard.dart';
import 'package:simobiplus/accountmenu/account_menu.dart';
import 'package:simobiplus/packages/simas_icons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MyStatefulWidget();
  }
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Text(
      'Index 1: Send',
      style: optionStyle,
    ),
    // Text(
    //   'Index 2: QRIS',
    //   style: optionStyle,
    // ),
    Text(
      'Index 2: Cash',
      style: optionStyle,
    ),
    AccountMenu(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final iconList = [
      Simas.new_home,
      Simas.new_send,
      Simas.new_cash,
      Simas.gear_setting
    ];
    return Scaffold(
        // appBar: AppBar(),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFA3F70),
          onPressed: () {},
          child: Icon(Simas.scan_to_pay_e_money),
          elevation: 0.0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Simas.new_home),
              activeIcon: Icon(Simas.new_home_active),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Simas.new_send),
              activeIcon: Icon(Simas.new_send_active),
              label: 'SEND',
            ),
            BottomNavigationBarItem(
              icon: Icon(Simas.new_cash),
              activeIcon: Icon(Simas.new_cash_active),
              label: 'Cash',
            ),
            BottomNavigationBarItem(
              icon: Icon(Simas.gear_setting),
              activeIcon: Icon(Simas.gear_setting),
              label: 'Setting',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffFA3F70),
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
