import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:simobiplus/components/outlined_sinarmas_button.dart';
import 'package:simobiplus/components/sinarmas_button.dart';
import 'package:simobiplus/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simobi Plus',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = const TextStyle(decoration: TextDecoration.underline);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Image.asset(
                'assets/images/introduction-image.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        Image.asset(
                          'assets/images/simobiplus.png',
                          width: 100,
                        ),
                        const SizedBox(width: 20.0),
                        Image.asset(
                          'assets/images/sinarmas.png',
                          width: 100,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        'Simple and Secure way to manage your money',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column(
                      children: [
                        SinarmasButton('LOGIN', onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        }),
                        const OutlinedSinarmasButton('REGISTER'),
                        const SizedBox(height: 10.0),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.grey,
                              // fontSize: 20.0,
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                text:
                                    'By log in or create new account,\nI agree to ',
                              ),
                              TextSpan(
                                  text: 'Terms and Conditions',
                                  style: linkStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms of Service"');
                                    }),
                              const TextSpan(
                                text: ' and ',
                              ),
                              TextSpan(
                                  text: 'Privacy Policy',
                                  style: linkStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Privacy Policy"');
                                    }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
