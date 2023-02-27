import 'package:flutter/material.dart';

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
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            menuIcon,
                            height: 35,
                            width: 35,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
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
                    Icon(Icons.arrow_forward_ios),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            )));
  }
}
