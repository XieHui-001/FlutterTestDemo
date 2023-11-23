import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverGridPage extends StatefulWidget {

  @override
  _SliverGridWidget createState() => _SliverGridWidget();
}

class _SliverGridWidget extends State<SliverGridPage> {
  List<String> itemList = ["123","3232","3242","544","4353"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              delegate: SliverChildBuilderDelegate((context, index) => Column(children: [
                Icon(Icons.accessibility),
                Text(itemList[index]),
              ],),childCount: itemList.length))
        ],
      ),
    );
  }
}
