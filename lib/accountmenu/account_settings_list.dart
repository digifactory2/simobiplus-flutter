import 'package:flutter/material.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class AccountSettingsList extends StatelessWidget {
  final String menu;
  final String menuTitle;
  final String menuTxt;
  final String menuIcon;

  const AccountSettingsList({
    Key? key,
    required this.menu,
    required this.menuTitle,
    this.menuTxt = '',
    this.menuIcon = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.menu == 'account') {
      return SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
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
    } else if (this.menu == 'help') {
      return SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  paddingvertical(size: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paddinghorizontal(size: 20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                //width: 100,
                                width: MediaQuery.of(context).size.width -
                                    120, //this is the total width of your screen
                                child: Text(
                                  menuTitle,
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Roboto'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      menuIcon == 'phone'
                          ? Icon(Icons.phone, color: Color(0xffFA3F70))
                          : Icon(Icons.phone, color: Color(0xffFA3F70)),
                      paddinghorizontal(size: 20),
                    ],
                  ),
                  paddingvertical(size: 25),
                ],
              )));
    } else if (this.menu == 'edit-profile') {
      return SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffECECEC), width: 3)),
              child: Column(
                children: [
                  paddingvertical(size: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paddinghorizontal(size: 10),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xffFFEFF4),
                            ),
                            width: 44,
                            height: 54,
                            child: Icon(
                              Icons.description,
                              color: Color(0xffFA3F70),
                              size: 35,
                            ),
                          ),
                          paddinghorizontal(size: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                //width: 100,
                                width: MediaQuery.of(context).size.width -
                                    160, //this is the total width of your screen
                                child: Text(
                                  menuTitle,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      fontFamily: 'Roboto'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      paddinghorizontal(size: 20),
                    ],
                  ),
                  paddingvertical(size: 15),
                ],
              )));
    } else {
      return SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  paddingvertical(size: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paddinghorizontal(size: 20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                //width: 100,
                                width: MediaQuery.of(context).size.width -
                                    120, //this is the total width of your screen
                                child: Text(
                                  menuTitle,
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Roboto'),
                                ),
                              ),
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
}
