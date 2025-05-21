import 'package:flutter/material.dart';

class Loadingini extends StatelessWidget {
  const Loadingini({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Por favor espere',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(children: [
          // Fondo
          Positioned.fill(
            child: Image.network(
              'https://media.istockphoto.com/id/609693908/es/vector/estados-unidos-estrellas-y-rayas-fondo.jpg?s=612x612&w=0&k=20&c=KVd2oVrQopG1EkJtZI17T1QtsaueoJNsY_HqQ4J4wG8=',
              fit: BoxFit.cover,
            ),
          ),
    
          Center(
            child: Column(
              children: [
                Image.network(
                  'https://img.pikbest.com/png-images/20190918/cartoon-snail-loading-loading-gif-animation_2734139.png!sw800',
                  height: 400,
                ),
                SizedBox(
                  height: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Cargando...', style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
        ]));
  }
}