import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomDialogPage extends StatefulWidget{


  @override
  _BottomDialogWidget createState () =>_BottomDialogWidget();
}

class _BottomDialogWidget extends State<BottomDialogPage>{

  List<String> itemList = ["123","3232","3242","544","4353"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet(context);
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Container(color: Colors.white,height: 400,child: SingleChildScrollView(child: Column(children: [

            Padding(padding: const EdgeInsets.only(top: 15),child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(onPressed: (){Navigator.of(context).pop();}, icon: const Icon(Icons.arrow_back),),
              const Expanded(child: Align(alignment: Alignment(-0.2,0),child: Text("Title",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),))
            ],)),
            SizedBox(height: 400,child: ListView.separated(padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 70),shrinkWrap: true,itemBuilder: (context,index){
              return InkWell(onTap: (){
                Navigator.of(context).pop();
              },child: Column(children: [
                FadeInImage.assetNetwork(placeholder: "images/ic_loading.gif", image: "https://img95.699pic.com/photo/40250/3647.jpg_wh300.jpg"),
                Text(itemList[index])
              ],));
            }, separatorBuilder: (context,index){
              return const SizedBox(height:10,);
            }, itemCount: itemList.length),)
          ],),))
        );
      },
    );
  }
}