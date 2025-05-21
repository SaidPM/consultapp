import 'package:flutter/material.dart';

class inicial extends StatelessWidget {
  const inicial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( centerTitle: true,
        title: Text('Eleciones 2025'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
          children: [
           
    Positioned.fill(
      child: Image.network(
        'https://media.istockphoto.com/id/614231908/es/vector/podio-del-presidente-de-ee-uu-en-el-escenario-con-bandera-decorativa-semic%C3%ADrculo.jpg?s=612x612&w=0&k=20&c=Adg_hjUK9V5yiZjKgCab7BkMcFAcyarsrWkRo_NlOlw=', // URL de fondo
        fit: BoxFit.cover, 
      ),
    ),
          SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                  width: 660,
                  ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg/1200px-Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text('Mark Zuckerberg', style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('Partido Radical', style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => ('Opción 1'),
                  child: Text('Votar'),
                ),
              ],
            ),
            
            Text(
              'Accione boton segun sea su eleccion' ,
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            
            SizedBox(width: 70),
            Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/The_White_House_-_54409525537_%28cropped%29.jpg/250px-The_White_House_-_54409525537_%28cropped%29.jpg',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                SizedBox(height: 10),
                Text('Elon Musk', style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('Partido Conservador', style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => ('Opción 2'),
                  child: Text('Votar'),
                ),
              ],
            ),
          ],
        ),
      ),
    )
          ]
    )
    );
  }
}