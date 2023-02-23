import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: Colors.amber,
              height: 1000,
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
                        width: 70,
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
                              ))
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
              left: 16,
              right: 16,
              child: Container(
                color: Colors.green,
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
