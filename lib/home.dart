import 'package:flutter/material.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emAlta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricao.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

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

      body: telas[_indiceAtual] ,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        //type: BottomNavigationBarType.shifting,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.grey),
       fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.red,
            label: 'Início',
              icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Início',
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: 'Início',
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: 'Início',
            icon: Icon(Icons.folder),
          ),
        ],
      ) ,
    );
  }
}
