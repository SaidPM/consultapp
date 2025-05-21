import 'package:flutter/material.dart';

import 'features/home/presentation/views/initialview.dart';
import 'features/home/presentation/views/loadingview.dart';

void main() {
  runApp(Pio());
}

class Pio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Votacion',
        home: Loadingini());
  }
}


