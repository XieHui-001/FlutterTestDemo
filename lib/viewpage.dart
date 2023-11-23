import 'package:flutter/cupertino.dart';

class PageViewPage extends StatefulWidget{

  @override
  _PageViewWidget createState () => _PageViewWidget();

}

class _PageViewWidget extends State<PageViewPage>{

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
        const Center(
          child: Text('First Page'),
        ),
        const Center(
          child: Text('Second Page'),
        ),
        Center(
          child: GestureDetector(onTap: (){
            controller.jumpToPage(0);
          },child: Text('Third Page'),),
        ),
      ],
    );
  }
}