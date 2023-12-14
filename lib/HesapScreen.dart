import 'package:bloc_kullanimi/HesapScreen_Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HesapScreen extends StatefulWidget {
  const HesapScreen({super.key});

  @override
  State<HesapScreen> createState() => _HesapScreenState();
}

class _HesapScreenState extends State<HesapScreen> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();
  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<HesapScreenCubit, int>(builder: (context, sonuc) {
                return Text(
                  "$sonuc",
                  style: const TextStyle(fontSize: 36),
                );
              }),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Sayı 1"),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Sayi 2 "),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<HesapScreenCubit>()
                            .toplamaYap(tfSayi1.text, tfSayi2.text);
                      },
                      child: const Text("Topla")),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<HesapScreenCubit>()
                            .carpmaYap(tfSayi1.text, tfSayi2.text);
                      },
                      child: const Text("Çarp")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
