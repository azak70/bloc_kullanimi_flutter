import 'package:bloc_kullanimi/HesapScreen.dart';
import 'package:bloc_kullanimi/HesapScreen_Cubit.dart';
import 'package:bloc_kullanimi/IkinciSayfa.dart';
import 'package:bloc_kullanimi/SayacCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => SayacCubit()),
      BlocProvider(create: (context) => HesapScreenCubit())
    ], child: const MaterialApp(home: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Kullanimi"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<SayacCubit, int>(builder: (context, sayacdegeri) {
            return Text(
              "$sayacdegeri",
              style: const TextStyle(fontSize: 36),
            );
          }),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IkinciSayfa()));
              },
              child: const Text("Geçiş Yap")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HesapScreen()));
              },
              child: const Text("Geçiş Yap"))
        ],
      )),
    );
  }
}
