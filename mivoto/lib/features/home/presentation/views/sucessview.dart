import 'package:flutter/material.dart';

class sucessv extends StatelessWidget {
  const sucessv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.blue, centerTitle: true,
        title: Text('Diligenciamiento Completado', ),
        
      ),
      body: Stack(
      children: [
        // Fondo desde la red
        Positioned.fill(
          child: Image.network(
            'https://static.vecteezy.com/system/resources/previews/017/439/206/non_2x/abstract-background-design-background-texture-design-in-abstract-style-creative-illustration-for-advertising-posters-business-cards-flyers-websites-banners-covers-landings-pages-etc-vector.jpg',
            fit: BoxFit.cover,
          ),
        ),
      Center(
        child:Column(
          children: [
            SizedBox(height: 35,),
            Image.network('https://cdn-icons-png.flaticon.com/128/9427/9427117.png'),
            SizedBox(height: 30,),
            Text('Voto registrado correctamente', style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Image.network('https://cdn-icons-gif.flaticon.com/10970/10970392.gif', height: 190,)
          ],
        ) ,),
    ]
    )
    
        );
  }
}