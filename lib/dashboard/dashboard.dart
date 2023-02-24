import 'package:flutter/material.dart';
import 'package:simobiplus/dashboard/box_simas_emoney.dart';
import 'package:simobiplus/dashboard/box_simas_poin.dart';
import 'package:simobiplus/dashboard/box_summary_portfolio.dart';
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
              height: 1000,
              child: Column(
                children: [
                  Container(
                    height: 280,
                    color: Colors.grey.shade100,
                  ),
                  SpecialDeals(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/white-simobi.png',
                        width: 75,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                side: BorderSide(
                                  width: 2,
                                  color: Colors.grey.shade400,
                                )),
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Mr/Mrs Ariq Daffa Athallah Putra',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 120,
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
