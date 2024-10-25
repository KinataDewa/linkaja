import 'package:flutter/material.dart';
import 'package:linkaja_clone/core/textstyle.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Transaction History',
            style: mediumTS.copyWith(fontSize: 16),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelStyle: mediumTS.copyWith(color: Colors.black),
            unselectedLabelStyle: regularTS.copyWith(color: Colors.black),
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Oops, no transaction history yet!',
                style: mediumTS,
              ),
            ),
            ListView(),
          ],
        ),
      ),
    );
  }
}
