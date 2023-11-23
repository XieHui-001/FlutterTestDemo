import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget{
  @override
  _RichTextWidget createState () =>_RichTextWidget();
}

class _RichTextWidget extends State<RichTextPage>{

  TextEditingController _controller = TextEditingController();
  List<String> dataList = ["Apple", "Banana", "Orange", "Grapes", "Mango", "Peach","ABB","A123","A555"];
  List<String> likeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  if(!value.isEmpty){
                    likeList = dataList.where((element) => element.contains(value)).toList();
                  }else{
                    likeList.clear();
                  }
                });
              },
              decoration: InputDecoration(
                hintText: 'Search...',
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: likeList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: buildRichText(likeList[index], _controller.text),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
}

  RichText buildRichText(String text, String query) {
    List<TextSpan> spans = [];

    // 根据用户输入的查询内容标红
    int index = text.toLowerCase().indexOf(query.toLowerCase());
    if (index != -1) {
      spans.add(TextSpan(
        text: text.substring(0, index),
        style: TextStyle(color: Colors.black),
      ));
      spans.add(TextSpan(
        text: text.substring(index, index + query.length),
        style: TextStyle(color: Colors.red),
      ));
      spans.add(TextSpan(
        text: text.substring(index + query.length),
        style: TextStyle(color: Colors.black),
      ));
    } else {
      spans.add(TextSpan(
        text: text,
        style: TextStyle(color: Colors.black),
      ));
    }

    return RichText(
      text: TextSpan(
        children: spans,
      ),
    );
  }
}