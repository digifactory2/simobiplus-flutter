// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PaymentHistoryTrf extends StatefulWidget {
  const PaymentHistoryTrf(
      {Key? key, required this.isBiFast, required this.itemList})
      : super(key: key);

  final bool isBiFast;
  final List itemList;

  @override
  State<PaymentHistoryTrf> createState() => _PaymentHistoryTrfState();
}

class _PaymentHistoryTrfState extends State<PaymentHistoryTrf> {
  int _index = 0;

  final List<dynamic> _items = [
    {
      'text': 'Fendi Setiyanto 1',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto 2',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto 3',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
  ];
  final List<dynamic> _itemsBifast = [];
  final String payeeStatus = 'success';

  @override
  Widget build(BuildContext context) {
    final count = _items.length;
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Divider(
                          color: Colors.black,
                          height: 25,
                          thickness: 0.6,
                          indent: 5,
                          endIndent: 5,
                        )),
                    Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.center, child: Text("OR"))),
                    Expanded(
                        flex: 2,
                        child: Divider(
                          color: Colors.black,
                          height: 25,
                          thickness: 0.6,
                          indent: 5,
                          endIndent: 5,
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Find from previous transaction",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      )),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Account number',
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 400,
              width: double.infinity,
              child: payeeStatus == 'error'
                  ? Container(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Error loading history.",
                            style: TextStyle(color: Colors.grey),
                          )),
                    )
                  : count > 0 && payeeStatus == 'success' ||
                          count > 0 && payeeStatus.isEmpty
                      ? ListView.separated(
                          padding: const EdgeInsets.all(8),
                          itemCount: _items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final items = index;
                            return Slidable(
                                endActionPane: ActionPane(
                                    extentRatio: 0.2,
                                    motion: StretchMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: (context) =>
                                            _onDismissed(context, index),
                                        icon: Icons.delete,
                                        // label: 'Delete',
                                        backgroundColor: Colors.pink,
                                      )
                                    ]),
                                child: buildListHistoryTrf(items));
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        )
                      : Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Nothing to show",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )),
        ],
      ),
    );
  }

  void _onDismissed(BuildContext context, int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  Widget buildListHistoryTrf(items) => ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 50,
            color: Colors.white,
            // child: Center(child: Text('Entry ${_items[index]}')),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _items[items]['text'],
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      _items[items]['subText'],
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Text(
                        _items[items]['secondaryText'],
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {},
      );
}
