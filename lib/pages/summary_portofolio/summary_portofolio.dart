import 'package:flutter/material.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_portofolio_header.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_saving_account.dart';

class SummaryPortofolio extends StatefulWidget {
  const SummaryPortofolio({super.key});

  @override
  State<SummaryPortofolio> createState() => _SummaryPortofolioState();
}

class _SummaryPortofolioState extends State<SummaryPortofolio>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SummaryPortofolioHeader(),
              Container(
                padding: const EdgeInsets.only(top: 20),
                width: double.infinity,
                child: TabBar(
                  controller: _controller,
                  isScrollable: true,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: const [
                    Tab(text: 'Account'),
                    Tab(text: 'Time Deposit'),
                    Tab(text: 'Credit Card'),
                    Tab(text: 'Loan'),
                    Tab(text: 'Investment'),
                    Tab(text: 'Others'),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100.0,
                  child: TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      const SummarySavingAccount(),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.location_on),
                          title: const Text(
                              'Latitude: 48.09342\nLongitude: 11.23403'),
                          trailing: IconButton(
                              icon: const Icon(Icons.my_location),
                              onPressed: () {}),
                        ),
                      ),
                      const Card(
                        child: ListTile(
                          leading: Icon(Icons.home),
                          title: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search for address...'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.location_on),
                          title: const Text(
                              'Latitude: 48.09342\nLongitude: 11.23403'),
                          trailing: IconButton(
                              icon: const Icon(Icons.my_location),
                              onPressed: () {}),
                        ),
                      ),
                      const Card(
                        child: ListTile(
                          leading: Icon(Icons.home),
                          title: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search for address...'),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.location_on),
                          title: const Text(
                              'Latitude: 48.09342\nLongitude: 11.23403'),
                          trailing: IconButton(
                              icon: const Icon(Icons.my_location),
                              onPressed: () {}),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
