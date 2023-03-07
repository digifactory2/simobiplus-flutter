import 'package:flutter/material.dart';
import 'package:simobiplus/dashboard/dashboard.dart';
import 'package:simobiplus/fundtransfer/fundtransfer.dart';

class mainTab extends StatefulWidget {
  const mainTab({super.key});

  @override
  State<mainTab> createState() => _mainTabState();
}

class _mainTabState extends State<mainTab> {
  int currentIndex = 0;
  final screens = [
    Dashboard(),
    FundTransfer(),
    Center(child: Text('QRIS')),
    Center(child: Text('Withdrawl')),
    Center(child: Text('Setting'))
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        // body: screens[currentIndex],
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.pink,
            iconSize: 30,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Send'),
              BottomNavigationBarItem(icon: Icon(Icons.scanner), label: 'Scan'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.money_off), label: 'Cash'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Setting')
            ]),
      );
}
