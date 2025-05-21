import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mivoto/features/home/presentation/bloc/home_bloc.dart';

import 'features/home/presentation/views/failureview.dart';
import 'features/home/presentation/views/initialview.dart';
import 'features/home/presentation/views/loadingview.dart';
import 'features/home/presentation/views/sucessview.dart';

void main() {
  runApp(Pio());
}

class Pio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess){
                return sucessv();
              }else if (state is HomeLoadInProgress){
                return Loadingini();
              }else if (state is HomeLoadFailure){
                return failurev();
              }
              return inicial();
          },
        )),
    );
  }
}






