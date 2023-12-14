import 'package:bloc_kullanimi/SayacCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ikinci Sayfa"),
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
                context.read<SayacCubit>().SayacArtir();
              },
              child: const Text("Sayaç Artır")),
          ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().SayacAzalt(2);
              },
              child: const Text("Sayaç Azalt")),
        ],
      )),
    );
  }
}
