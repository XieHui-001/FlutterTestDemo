import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroTestPage extends StatefulWidget{

  @override
  _HeroTestWidget createState () => _HeroTestWidget();
}

class _HeroTestWidget extends State<HeroTestPage>{

  @override
  Widget build(BuildContext context) {
    double timeDilation = 5.0; // 1.0 means normal animation speed.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo: 'images/ic_icon.png',
          width: 300.0,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: Container(
                      // The blue background emphasizes that it's a new route.
                      color: Colors.lightBlueAccent,
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.topLeft,
                      child: PhotoHero(
                        photo: 'images/ic_icon.png',
                        width: 100.0,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                }
            ));
          },
        ),
      ),
    );
  }
}


class PhotoHero extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;


  const PhotoHero({ Key? key, required this.photo, required this.onTap, required this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}