import 'package:bloc_kullanimi/HesapScreen_Reporsitory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HesapScreenCubit extends Cubit<int> {
  HesapScreenCubit() : super(0);
  var repo = HesapScreenReporsitory();
  void toplamaYap(String sayi_1, String sayi_2) {
    emit(repo.toplamaYap(sayi_1, sayi_2));
  }

  void carpmaYap(String sayi_1, String sayi_2) {
    emit(repo.carpmaYap(sayi_1, sayi_2));
  }
}
