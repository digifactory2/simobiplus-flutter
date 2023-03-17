import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginDrawer extends StatelessWidget {
  const LoginDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = const TextStyle(decoration: TextDecoration.underline);

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    'Products & Services',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  contentPadding: EdgeInsets.only(top: 20, left: 16),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: const Text('Offers'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    'Help & Support',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Call Support',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: ' 1500153',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: const Icon(Icons.phone_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Call Support',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: ' (021) 50188888',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: const Icon(Icons.phone_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: const Text('Frequently Asked Questions'),
                  subtitle: const Text('FAQ'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: const Text('ATM & Branch Locator'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  thickness: 2,
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: const Text('Settings'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/sinarmas.png',
                    width: 150,
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms, conditions and privacy policy',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service');
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text("SimobiPlus v0.0.1"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
