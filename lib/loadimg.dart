import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadNetWorkImageTest extends StatefulWidget{

  @override
  _LoadNetWorkImageWidget createState () => _LoadNetWorkImageWidget();

}

class _LoadNetWorkImageWidget extends State<LoadNetWorkImageTest>{

  @override
  Widget build(BuildContext context) {
    const title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: "images/ic_loading.gif",
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}