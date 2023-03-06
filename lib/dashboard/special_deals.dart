import 'package:flutter/material.dart';

class SpecialDeals extends StatelessWidget {
  SpecialDeals({super.key});

  final List<dynamic> _items = [
    {
      'title': 'Lifestyle',
      'active': true,
    },
    {
      'title': 'Special Promo',
      'active': false,
    },
    {
      'title': 'Product',
      'active': false,
    },
    {
      'title': 'Investment',
      'active': false,
    },
    {
      'title': 'All Deals',
      'active': false,
    },
  ];

  final List<dynamic> _cards = [
    {
      'title': 'e-Voucher',
      'subtitle': 'Save more and easier with e-Voucher',
      'category': 'Lifestyle',
      'image': 'gopay.jpg'
    },
    {
      'title': 'UniPin (Game Voucher)',
      'subtitle': 'The leading digital entertainment enabler',
      'category': 'Lifestyle',
      'image': 'top-up-phone-balance.jpg'
    },
    {
      'title': 'Special Promo',
      'subtitle': 'The leading digital entertainment enabler',
      'category': 'Special Promo',
      'image': 'gopay.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                  'Special Deals',
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
            height: 50,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _items.length,
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
                      backgroundColor: _items[index]['active']
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: BorderSide(
                        width: 1,
                        color: _items[index]['active']
                            ? Theme.of(context).primaryColor
                            : Colors.grey.shade400,
                      ),
                    ),
                    child: Text(
                      _items[index]['title'],
                      style: TextStyle(
                        color: _items[index]['active']
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 16 : 4,
                    right: 4,
                    top: 8,
                    bottom: 8,
                  ),
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/${_cards[index]['image']}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _cards[index]['title'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(_cards[index]['subtitle']),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
