import 'package:flutter/material.dart';
import 'package:simobiplus/packages/simas_icons.dart';

class RedeemPoin extends StatelessWidget {
  RedeemPoin({super.key});

  final List<dynamic> _poinCategories = [
    {'name': 'Health & Beauty', 'image': 'poin_health.png'},
    {'name': 'Fun & Games', 'image': 'poin_ent.png'},
    {'name': 'Food & Beverage', 'image': 'poin_fnb.png'},
    {'name': 'Shopping', 'image': 'poin_shop.png'},
    {'name': 'Transport', 'image': 'poin_transport.png'},
    {'name': 'More', 'image': 'poin_more.png'},
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
                  'Redeem My Simas Poin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  iconSize: 20,
                  onPressed: () {
                    print('Redeem My Simas Poin');
                  },
                  icon: const Icon(Simas.more_menu_2),
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
              itemCount: _poinCategories.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 10 : 4,
                    right: 4,
                    top: 8,
                    bottom: 8,
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/${_poinCategories[index]['image']}',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            _poinCategories[index]['name'],
                            style: const TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      )),
                );
              },
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   height: 200,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemCount: _cards.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         margin: EdgeInsets.only(
          //           left: index == 0 ? 16 : 4,
          //           right: 4,
          //           top: 8,
          //           bottom: 8,
          //         ),
          //         width: 180,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           border: Border.all(
          //             width: 1,
          //             color: Colors.grey.shade300,
          //           ),
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                 topRight: Radius.circular(10),
          //                 topLeft: Radius.circular(10),
          //               ),
          //               child: Image.asset(
          //                 'assets/images/${_cards[index]['image']}',
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text(
          //                     _cards[index]['title'],
          //                     style: const TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                   const SizedBox(height: 4),
          //                   Text(_cards[index]['subtitle']),
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
