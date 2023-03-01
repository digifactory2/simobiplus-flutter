import 'package:flutter/material.dart';

class ProductAndService extends StatefulWidget {
  const ProductAndService({
    super.key,
  });

  @override
  State<ProductAndService> createState() => _ProductAndServiceState();
}

class _ProductAndServiceState extends State<ProductAndService> {
  int _index = 0;

  final List<dynamic> _items = [
    {
      'image': 'assets/images/products/productCC.png',
    },
    {
      'image': 'assets/images/products/productSA.png',
    },
    {
      'image': 'assets/images/products/productLoan.png',
    },
    {
      'image': 'assets/images/products/productInsurance.png',
    },
    {
      'image': 'assets/images/products/productopenTD.png',
    },
    {
      'image': 'assets/images/products/productRate.png',
    },
    {
      'image': 'assets/images/products/productSplitbill.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final PageController pageController =
        PageController(initialPage: 0, viewportFraction: 0.8);

    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product & Service',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('See All'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: PageView.builder(
              itemCount: _items.length,
              padEnds: false,
              controller: pageController,
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 4,
                  ),
                  child: Image.asset(
                    _items[i]['image'],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              _items.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: _index == index
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
