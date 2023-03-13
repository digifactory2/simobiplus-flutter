import 'package:flutter/material.dart';

class PayAndTopUp extends StatelessWidget {
  PayAndTopUp({super.key});

  final List<dynamic> _billers = [
    {'name': 'OVO', 'image': 'biller_ovo.png'},
    {'name': 'GO-PAY', 'image': 'biller_gopay.png'},
    {'name': 'DANA', 'image': 'biller_dana.png'},
    {'name': 'Electricity', 'image': 'biller_pln.png'},
    {'name': 'Prepaid', 'image': 'biller_prepaid.png'},
    {'name': 'Postpaid', 'image': 'biller_postpaid.png'},
    {'name': 'Credit Card', 'image': 'biller_credit_card.png'},
    {'name': 'See All', 'image': 'biller_all.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
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
            physics: const NeverScrollableScrollPhysics(),
            children: _billers.map((biller) {
              return InkWell(
                onTap: () {
                  print(biller['name']);
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/${biller['image']}',
                      width: 55,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(biller['name']),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
