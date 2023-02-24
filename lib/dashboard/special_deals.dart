import 'package:flutter/material.dart';

class SpecialDeals extends StatelessWidget {
  SpecialDeals({super.key});

  final List<String> items = [
    'Lifestyle',
    'Special Promo',
    'Product',
    'Investment',
    'All Deals'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      // height: 300,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Special Deals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 16 : 4,
                    right: 4,
                    top: 8,
                    bottom: 8,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: Text(
                      items[index],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // const Text(
          //   'Special Deals',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 16,
          //   ),
          // ),
        ],
      ),
    );
  }
}
