import 'package:flutter/material.dart';
import 'package:simobiplus/pages/atmservices/atm_services_list.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class ManageATM extends StatelessWidget {
  const ManageATM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Choose Services'),
          backgroundColor: Color(0xffFA3F70),
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          color: Color(0xffF9F8FD),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paddingvertical(size: 20),
                  Row(
                    children: [
                      // paddingvertical(
                      //   size: MediaQuery.of(context).size.height * 0.25,
                      // ),
                      paddinghorizontal(size: 20),
                      Text(
                        'Choose Your Services',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        ATMServicesList(
                            menuTitle: 'Activate ATM Card',
                            menuTxt:
                                'Easy to activate your ATM Card in anywhere at anytime you want!',
                            menuIcon: 'assets/images/activateatmcard.png')
                      ],
                    ),
                  ),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        ATMServicesList(
                            menuTitle: 'Block ATM Card',
                            menuTxt:
                                "Let's go keep your datas stay safe even your ATM Card is missing!",
                            menuIcon: 'assets/images/blockatmcard.png')
                      ],
                    ),
                  ),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        ATMServicesList(
                            menuTitle: 'Request ATM Card',
                            menuTxt:
                                'Get a new ATM Card by your current saving account for better transactions!',
                            menuIcon: 'assets/images/addnewatmcard.png')
                      ],
                    ),
                  ),
                  paddingvertical(size: 10),
                  Center(
                    child: Column(
                      children: [
                        ATMServicesList(
                            menuTitle: 'Closing Saving Account',
                            menuTxt:
                                'Close your unused Saving Account 100% online with few simple steps',
                            menuIcon: 'assets/images/closesavingacc.png')
                      ],
                    ),
                  ),
                  paddingvertical(size: 30),
                ],
              )
            ],
          ),
        )));
  }
}
