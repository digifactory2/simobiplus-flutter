import 'package:flutter/material.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class AccountSettingsList extends StatelessWidget {
  final String menuTitle;
  final String menuTxt;
  final String menuIcon;

  const AccountSettingsList({
    Key? key,
    required this.menuTitle,
    required this.menuTxt,
    required this.menuIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                paddingvertical(size: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    paddinghorizontal(size: 20),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            menuIcon,
                            height: 35,
                            width: 35,
                          ),
                        ),
                        paddinghorizontal(size: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              //width: 100,
                              width: MediaQuery.of(context).size.width -
                                  180, //this is the total width of your screen
                              child: Text(
                                menuTitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            SizedBox(
                              //width: 100,
                              width: MediaQuery.of(context).size.width -
                                  180, //this is the total width of your screen
                              child: Text(
                                menuTxt,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Roboto'),
                                // overflow: TextOverflow.ellipsis,
                                // softWrap: false,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color(0xffFA3F70)),
                    paddinghorizontal(size: 20),
                  ],
                ),
                paddingvertical(size: 25),
              ],
            )));
  }
}
