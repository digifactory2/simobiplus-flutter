// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simobiplus/fundtransfer/paymentHistoryTrf.dart';

class AddPayeeAccount extends StatefulWidget {
  const AddPayeeAccount({super.key});

  @override
  State<AddPayeeAccount> createState() => _AddPayeeAccountState();
}

class _AddPayeeAccountState extends State<AddPayeeAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.pink,
                    size: 30,
                  )),
            ),

            //Body Container
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Text(
                        "Send money to",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        child: DefaultTabController(
                            length: 3,
                            child: Container(
                              child: TabBar(tabs: [
                                Tab(
                                  child: Text(
                                    "Account Number",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Phone Number",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Email Address",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ]),
                            ))),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Account number',
                          floatingLabelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
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
                    SizedBox(height: 20),
                    Container(
                      child: PaymentHistoryTrf(),
                    ),
                    // Container(
                    //   color: Colors.green,
                    //   height: 300.0,
                    //   alignment: Alignment.center,
                    //   child: Text("Content 1"),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
