import 'package:flutter/material.dart';
import 'package:simobiplus/pages/accountmenu/account_settings_list.dart';
import 'package:simobiplus/styling/greyLine.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class AccountEditProfile extends StatelessWidget {
  const AccountEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Edit Profile'),
          backgroundColor: Color(0xffFA3F70),
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
          ),
        ),
        body: Container(
          color: Color(0xffF9F8FD),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paddingvertical(size: 25),
                  Center(
                      child: Column(
                    children: [
                      // paddingvertical(
                      //   size: MediaQuery.of(context).size.height * 0.25,
                      // ),
                      Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 30,
                      ),
                      paddingvertical(size: 15),
                      Text(
                        'LEON CHRISTOPHER',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Roboto'),
                      ),
                      paddingvertical(size: 5),
                      Text(
                        '01leon1097',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Roboto'),
                      ),
                      paddingvertical(size: 5),
                      Text(
                        '123456',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Roboto'),
                      ),
                    ],
                  )),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        AccountSettingsList(
                            menu: 'edit-profile',
                            menuTitle: 'Personal Information')
                      ],
                    ),
                  ),
                  paddingvertical(size: 10),
                  Center(
                    child: Column(
                      children: [
                        AccountSettingsList(
                            menu: 'edit-profile', menuTitle: 'NPWP Number')
                      ],
                    ),
                  ),
                  paddingvertical(size: 10),
                  Center(
                    child: Column(
                      children: [
                        AccountSettingsList(
                            menu: 'edit-profile',
                            menuTitle: 'Financial Details')
                      ],
                    ),
                  ),
                  paddingvertical(size: 10),
                  Center(
                    child: Column(
                      children: [
                        AccountSettingsList(
                            menu: 'edit-profile', menuTitle: 'Office Details')
                      ],
                    ),
                  ),
                  paddingvertical(size: 30),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffFA3F70)),
                      child: SizedBox(
                          //width: 100,
                          width: MediaQuery.of(context).size.width -
                              40, //this is the total width of your screen
                          height: 47,
                          child: Center(
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Roboto'),
                            ),
                          )),
                    ),
                  ),
                  paddingvertical(size: 30),
                ],
              )
            ],
          ),
        ));
  }
}
