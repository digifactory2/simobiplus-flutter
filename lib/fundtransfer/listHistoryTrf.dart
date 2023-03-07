import 'package:flutter/material.dart';

class ListHistoryTransfer extends StatefulWidget {
  const ListHistoryTransfer({
    super.key,
  });

  @override
  State<ListHistoryTransfer> createState() => _ListHistoryTransferState();
}

class _ListHistoryTransferState extends State<ListHistoryTransfer> {
  int _index = 0;

  final List<dynamic> _items = [
    {
      'image': 'assets/images/products/productCC.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'image': 'assets/images/products/productSA.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'image': 'assets/images/products/productLoan.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'image': 'assets/images/products/productInsurance.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'image': 'assets/images/products/productopenTD.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'image': 'assets/images/products/productRate.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'image': 'assets/images/products/productSplitbill.png',
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'seconddaryText': 'PT. Bank Sinarmas, Tbk.'
    },
  ];
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Hello"),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Hello 1"),
        )
      ],
    );
  }
}
