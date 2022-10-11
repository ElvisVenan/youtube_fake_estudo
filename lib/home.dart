import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
          opacity: 1
        ),
        backgroundColor: Colors.red,
        title: Image.asset(
            'images/youtube.png',
              width: 98,
              height: 22,
        ),
        actions: [
          IconButton(
              onPressed: (){
                print("Botão live");
                },
              icon: Icon(Icons.videocam),
          ),

          IconButton(
            onPressed: (){
              print("Botão localizar");
            },
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: (){
              print("Botão logar");
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Container() ,
    );
  }
}
