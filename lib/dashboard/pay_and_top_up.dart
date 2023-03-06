import 'package:flutter/material.dart';

class PayAndTopUp extends StatelessWidget {
  PayAndTopUp({super.key});

  final List<dynamic> _billers = [
    {'title': 'OVO', 'image': 'ovo.jpg'},
    {'title': 'GO-PAY', 'image': 'gopay.jpg'},
    {'title': 'DANA', 'image': 'dana.jpg'},
    {'title': 'Electricity', 'image': 'electricity.jpg'},
    {'title': 'Prepaid', 'image': 'prepaid.jpg'},
    {'title': 'Postpaid', 'image': 'postpaid.jpg'},
    {'title': 'Credit Card', 'image': 'credit_card.jpg'},
    {'title': 'See All', 'image': 'see_all.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      // height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
            // padding: EdgeInsets.all(16),
            child: Text(
              'Pay / Top Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            children: _billers.map((biller) {
              return Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Text(biller['title']),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
