import 'package:flutter/material.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_portofolio_header.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_saving_account.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_time_deposit.dart';

class SummaryPortofolio extends StatefulWidget {
  const SummaryPortofolio({super.key});

  @override
  State<SummaryPortofolio> createState() => _SummaryPortofolioState();
}

class _SummaryPortofolioState extends State<SummaryPortofolio>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(_smoothScrollToTop);
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListener() {
    if (fixedScroll) {
      _scrollController.jumpTo(0);
    }
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(microseconds: 300),
      curve: Curves.ease,
    );

    setState(() {
      fixedScroll = _tabController.index == 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SummaryPortofolioHeader(),
          Container(
            height: 50,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.bold,
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
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                const SummarySavingAccount(),
                const SummaryTimeDeposit(),
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: TextField(
                      decoration:
                          InputDecoration(hintText: 'Search for address...'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.location_on),
                    title:
                        const Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: TextField(
                      decoration:
                          InputDecoration(hintText: 'Search for address...'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.location_on),
                    title:
                        const Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
