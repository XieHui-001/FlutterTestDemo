import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableViewPage extends StatefulWidget {
  const TableViewPage({super.key});

  @override
  _TableViewWidget createState() => _TableViewWidget();
}

class _TableViewWidget extends State<TableViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
                indicatorColor: Colors.blue,
                indicatorWeight: 4,
                labelColor: Colors.red,
                indicatorSize:TabBarIndicatorSize.tab,
                splashBorderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                unselectedLabelColor: Colors.cyan,
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ]),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: TabBarView(
              children: [
                TestPage(title: 'Test Page 1'),
                TestPage(title: 'Test Page 2'),
                TestPage(title: 'Test Page 3'),
              ],
            ))
          ],
        ));
  }
}

class TestPage extends StatelessWidget {
  final String title;

  TestPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
