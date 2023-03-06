import 'package:flutter/material.dart';
import 'package:simobiplus/dashboard/box_simas_emoney.dart';
import 'package:simobiplus/dashboard/box_simas_poin.dart';
import 'package:simobiplus/dashboard/box_summary_portfolio.dart';
import 'package:simobiplus/dashboard/header.dart';
import 'package:simobiplus/dashboard/pay_and_top_up.dart';
import 'package:simobiplus/dashboard/product_and_service.dart';
import 'package:simobiplus/dashboard/redeem_poin.dart';
import 'package:simobiplus/dashboard/special_deals.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              // height: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 270,
                    color: Colors.grey.shade100,
                  ),
                  SpecialDeals(),
                  Container(
                    height: 15,
                    color: Colors.grey.shade100,
                  ),
                  const ProductAndService(),
                  Container(
                    height: 15,
                    color: Colors.grey.shade100,
                  ),
                  PayAndTopUp(),
                  Container(
                    height: 15,
                    color: Colors.grey.shade100,
                  ),
                  RedeemPoin(),
                  Container(
                    height: 15,
                    color: Colors.grey.shade100,
                  ),
                ],
              ),
            ),
            const Header(),
            Positioned(
              top: 130,
              left: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BoxSimasEmoney(),
                  BoxSimasPoin(),
                  BoxSummaryPortfolio(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
